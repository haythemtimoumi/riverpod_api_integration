class ParticipateRequestModel {
  final String userId;
  final String questionAnswerId;
  final String? userCustomAnswer;

  const ParticipateRequestModel({
    required this.userId,
    required this.questionAnswerId,
    this.userCustomAnswer,
  });

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'questionAnsweerId': questionAnswerId,
        'userCustomAnswer': userCustomAnswer,
      };

  @override
  String toString() =>
      'ParticipateRequestModel(userId: $userId, questionAnswerId: $questionAnswerId, userCustomAnswer: $userCustomAnswer)';
}
