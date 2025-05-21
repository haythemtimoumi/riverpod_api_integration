import 'question.dart';

class OpinionPoll {
  final String id;
  final String opinionPollName;
  final List<Question> questions;

  OpinionPoll({
    required this.id,
    required this.opinionPollName,
    required this.questions,
  });
}
