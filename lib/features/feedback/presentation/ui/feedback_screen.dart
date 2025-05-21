import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import '../state/feedback_state.dart';
import '../../domain/model/feedback_model.dart';
import 'package:arop/features/opinionpoll/presentation/widgets/custombutton.dart';
import 'package:arop/features/opinionpoll/presentation/widgets/customtextfield.dart';

class FeedbackScreen extends ConsumerStatefulWidget {
  const FeedbackScreen({super.key});

  @override
  ConsumerState<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends ConsumerState<FeedbackScreen> {
  String? typeFeedback;
  final customFeedbackController = TextEditingController();
  List<String> filePaths = [];

  final _types = ['OTHER', 'TASK_FEEDBACK'];

  void pickFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      setState(() => filePaths = result.paths.whereType<String>().toList());
    }
  }

  void submit() async {
    if (typeFeedback == null ||
        (['OTHER', 'TASK_FEEDBACK'].contains(typeFeedback) &&
            customFeedbackController.text.isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill required fields')),
      );
      return;
    }

    final model = FeedbackModel(
      typeFeedback: typeFeedback!,
      customFeedback: customFeedbackController.text.isEmpty
          ? null
          : customFeedbackController.text,
      filePaths: filePaths,
    );

    await ref.read(feedbackStateProvider.notifier).submitFeedback(model);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(feedbackStateProvider);

    ref.listen<AsyncValue<void>>(feedbackStateProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('✅ Feedback sent!')),
          );
          customFeedbackController.clear();
          filePaths.clear();
          typeFeedback = null;
          setState(() {});
          Navigator.pop(context);
        },
        error: (e, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('❌ Error: $e')),
          );
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Submit Feedback')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration.collapsed(hintText: ''),
                hint: const Text("Select Feedback Type"),
                value: typeFeedback,
                onChanged: (val) => setState(() => typeFeedback = val),
                items: _types
                    .map((t) => DropdownMenuItem(
                          value: t,
                          child: Text(
                            t,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
            if (typeFeedback == 'OTHER' || typeFeedback == 'TASK_FEEDBACK')
              CustomTextField(
                hintText: 'Custom Feedback',
                controller: customFeedbackController,
                maxLines: 4,
              ),
            const SizedBox(height: 20),
            CustomButton(
              text: '📎 Pick Files',
              onPressed: pickFiles,
            ),
            const SizedBox(height: 10),
            if (filePaths.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: filePaths
                    .map((p) => Chip(
                          label: Text(
                            File(p).uri.pathSegments.last,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
              ),
            const SizedBox(height: 24),
            CustomButton(
              text: '🚀 Submit',
              isLoading: state is AsyncLoading,
              onPressed: state is AsyncLoading ? null : submit,
            ),
          ],
        ),
      ),
    );
  }
}
