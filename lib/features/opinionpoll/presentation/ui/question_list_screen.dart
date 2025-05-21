import 'package:flutter/material.dart';
import 'answer_question_screen.dart';
import 'package:arop/features/opinionpoll/domain/model/opinionpoll.dart';

class QuestionListScreen extends StatelessWidget {
  final OpinionPoll poll;

  const QuestionListScreen({super.key, required this.poll});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(poll.opinionPollName)),
      body: ListView.builder(
        itemCount: poll.questions.length,
        itemBuilder: (context, index) {
          final question = poll.questions[index];

          return TweenAnimationBuilder(
            tween: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ),
            duration: Duration(milliseconds: 300 + index * 100),
            curve: Curves.easeOutCubic,
            builder: (context, Offset offset, child) => Transform.translate(
              offset: Offset(offset.dx * 100, 0),
              child: child,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 1,
              shadowColor: Theme.of(context).shadowColor,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                title: Text(
                  question.question,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnswerQuestionScreen(
                        question: question,
                        pollId: poll.id,
                      ),
                    ),
                  );

                  if (result == true && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor:
                            Theme.of(context).colorScheme.surfaceVariant,
                        content: Text(
                          'Answer submitted successfully!',
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
