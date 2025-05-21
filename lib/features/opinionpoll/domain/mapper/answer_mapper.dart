import '../../data/dto/response/answer_response.dart';
import '../model/answer.dart';

extension AnswerMapper on AnswerResponse {
  Answer toDomain() {
    return Answer(
      userId: userId,
      questionAnswerId: questionAnsweerId, // ✅ FIXED spelling
      userCustomAnswer: userCustomAnswer,
    );
  }
}
