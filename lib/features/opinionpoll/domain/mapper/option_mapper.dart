import '../../data/dto/response/option_response.dart';
import '../model/option.dart';
import 'answer_mapper.dart';

extension OptionMapper on OptionResponse {
  Option toDomain() {
    return Option(
      id: id,
      option: option,
      userAnswers:
          userAnswerOpinionPollRequestModels.map((e) => e.toDomain()).toList(),
    );
  }
}
