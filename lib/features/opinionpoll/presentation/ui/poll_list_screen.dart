import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arop/core/constants.dart';
import 'package:arop/features/opinionpoll/presentation/state/opinionpoll_state.dart';
import 'question_list_screen.dart';
import 'package:arop/features/opinionpoll/presentation/widgets/custombutton.dart';
import 'package:arop/features/feedback/presentation/ui/feedback_screen.dart';
import 'package:arop/features/opinionpoll/domain/model/opinionpoll.dart';
import 'package:arop/features/common/presentation/states/theme_state.dart';

class PollListScreen extends ConsumerStatefulWidget {
  const PollListScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<PollListScreen> createState() => _PollListScreenState();
}

class _PollListScreenState extends ConsumerState<PollListScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<OpinionPoll> polls = [];

  void _refreshPolls(List<OpinionPoll> newPolls) {
    for (int i = 0; i < polls.length; i++) {
      _listKey.currentState?.removeItem(
        0,
        (context, animation) => const SizedBox.shrink(),
        duration: const Duration(milliseconds: 300),
      );
    }
    polls.clear();
    for (int i = 0; i < newPolls.length; i++) {
      Future.delayed(Duration(milliseconds: i * 100), () {
        polls.insert(i, newPolls[i]);
        _listKey.currentState?.insertItem(i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final pollsAsync = ref.watch(fetchOpinionPollsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Opinion Polls'),
        actions: [
          Consumer(
            builder: (context, ref, _) {
              final themeMode =
                  ref.watch(themeStateProvider).valueOrNull ?? ThemeMode.system;

              return PopupMenuButton<ThemeMode>(
                icon: const Icon(Icons.color_lens),
                tooltip: 'Change Theme',
                onSelected: (mode) {
                  ref.read(themeStateProvider.notifier).updateThemeMode(mode);
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: ThemeMode.light,
                    child: Row(
                      children: [
                        Icon(Icons.light_mode,
                            color: themeMode == ThemeMode.light
                                ? Colors.blue
                                : null),
                        const SizedBox(width: 8),
                        const Text('Light'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.dark,
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,
                            color: themeMode == ThemeMode.dark
                                ? Colors.blue
                                : null),
                        const SizedBox(width: 8),
                        const Text('Dark'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.system,
                    child: Row(
                      children: [
                        Icon(Icons.phone_android,
                            color: themeMode == ThemeMode.system
                                ? Colors.blue
                                : null),
                        const SizedBox(width: 8),
                        const Text('System'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.feedback),
            tooltip: 'Give Feedback',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FeedbackScreen()),
              );
            },
          ),
        ],
      ),
      body: pollsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) {
          debugPrint('❌ Error: $err');
          debugPrintStack(stackTrace: stack);
          return Center(child: Text('Error: $err'));
        },
        data: (fetchedPolls) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _refreshPolls(fetchedPolls);
          });

          return AnimatedList(
            key: _listKey,
            initialItemCount: polls.length,
            padding: const EdgeInsets.only(bottom: 16),
            itemBuilder: (context, index, animation) {
              final poll = polls[index];

              final hasParticipated = poll.questions.every((question) =>
                  question.options.any((option) => option.userAnswers
                      .any((ua) => ua.userId == AppConstants.userId)));

              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                  )),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(16),
                      shadowColor: Theme.of(context).shadowColor,
                      color: Theme.of(context).cardColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              poll.opinionPollName,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            hasParticipated
                                ? const Text(
                                    '✅ Participated',
                                    style: TextStyle(color: Colors.green),
                                  )
                                : CustomButton(
                                    text: 'Participate',
                                    onPressed: () async {
                                      final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              QuestionListScreen(poll: poll),
                                        ),
                                      );

                                      if (result == true) {
                                        ref.invalidate(
                                            fetchOpinionPollsProvider);
                                        final refreshed = await ref.read(
                                          fetchOpinionPollsProvider.future,
                                        );
                                        _refreshPolls(refreshed);
                                      }
                                    },
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
