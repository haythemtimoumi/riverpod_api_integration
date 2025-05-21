import '../../data/dto/response/question_response.dart';
import '../model/question.dart';
import 'option_mapper.dart';

extension QuestionMapper on QuestionResponse {
  Question toDomain() {
    return Question(
      id: id,
      question: question,
      openForCustomAnswer: openForCustomAnswer,
      options: optionsList.map((e) => e.toDomain()).toList(),
    );
  }
}
