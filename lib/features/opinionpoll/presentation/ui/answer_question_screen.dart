import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arop/core/constants.dart';
import 'package:arop/features/opinionpoll/data/dto/request/participate_request_dto.dart';
import 'package:arop/features/opinionpoll/domain/model/question.dart';
import 'package:arop/features/opinionpoll/presentation/state/participate_opinionpoll_state.dart';
import 'package:arop/features/opinionpoll/presentation/state/opinionpoll_state.dart';
import 'package:arop/features/opinionpoll/presentation/widgets/custombutton.dart';
import 'package:arop/features/opinionpoll/presentation/widgets/customtextfield.dart';

class AnswerQuestionScreen extends ConsumerStatefulWidget {
  final Question question;
  final String pollId;

  const AnswerQuestionScreen({
    super.key,
    required this.question,
    required this.pollId,
  });

  @override
  ConsumerState<AnswerQuestionScreen> createState() =>
      _AnswerQuestionScreenState();
}

class _AnswerQuestionScreenState extends ConsumerState<AnswerQuestionScreen>
    with TickerProviderStateMixin {
  String? selectedOptionId;
  final TextEditingController customAnswerController = TextEditingController();
  bool isLoading = false;

  late final AnimationController _controller;
  late final List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _animations = List.generate(widget.question.options.length, (index) {
      return Tween<Offset>(
        begin: const Offset(1.0, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1 * index, 1.0, curve: Curves.easeOutCubic),
      ));
    });

    _controller.forward();
  }

  Future<void> _submitAnswer() async {
    final selectedOption = widget.question.options.firstWhere(
      (o) => o.id == selectedOptionId,
    );

    final dto = ParticipateRequestDto(
      userId: AppConstants.userId,
      questionAnsweerId: selectedOptionId!,
      userCustomAnswer: selectedOption.option.toLowerCase() == 'other'
          ? customAnswerController.text.trim()
          : null,
    );

    try {
      setState(() => isLoading = true);
      final notifier = ref.read(participateOpinionPollProvider.notifier);
      await notifier.submitAnswers([dto]);

      if (mounted) {
        ref.invalidate(fetchOpinionPollsProvider);
        Navigator.pop(context, true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          content: Text(
            e.toString(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final showCustomInput = widget.question.openForCustomAnswer &&
        selectedOptionId != null &&
        widget.question.options.any((o) =>
            o.id == selectedOptionId && o.option.toLowerCase() == 'other');

    return Scaffold(
      appBar: AppBar(title: const Text('Poll')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            for (int i = 0; i < widget.question.options.length; i++)
              SlideTransition(
                position: _animations[i],
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 1,
                  shadowColor: Theme.of(context).shadowColor,
                  child: RadioListTile<String>(
                    title: Text(widget.question.options[i].option),
                    value: widget.question.options[i].id,
                    groupValue: selectedOptionId,
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onChanged: (value) => setState(() {
                      selectedOptionId = value;
                      if (widget.question.options[i].option.toLowerCase() !=
                          "other") {
                        customAnswerController.clear();
                      }
                    }),
                  ),
                ),
              ),
            if (showCustomInput)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CustomTextField(
                  hintText: 'Write your answer here',
                  controller: customAnswerController,
                  maxLines: 3,
                ),
              ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Submit',
              onPressed: selectedOptionId == null ? null : _submitAnswer,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
