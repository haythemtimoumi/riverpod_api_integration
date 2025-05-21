class Answer {
  final String userId;
  final String questionAnswerId;
  final String? userCustomAnswer;

  Answer({
    required this.userId,
    required this.questionAnswerId,
    this.userCustomAnswer,
  });
}
