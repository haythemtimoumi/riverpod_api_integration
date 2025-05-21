import 'option.dart';

class Question {
  final String id;
  final String question;
  final bool openForCustomAnswer;
  final List<Option> options;

  Question({
    required this.id,
    required this.question,
    required this.openForCustomAnswer,
    required this.options,
  });
}
