import 'answer.dart';

class Option {
  final String id;
  final String option;
  final List<Answer> userAnswers;

  Option({
    required this.id,
    required this.option,
    required this.userAnswers,
  });
}
