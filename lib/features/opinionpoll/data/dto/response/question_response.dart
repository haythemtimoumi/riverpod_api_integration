import 'package:freezed_annotation/freezed_annotation.dart';
import 'option_response.dart';

part 'question_response.freezed.dart';
part 'question_response.g.dart';

@freezed
class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    required String id,
    required String question,
    required List<OptionResponse> optionsList,
    required bool openForCustomAnswer,
  }) = _QuestionResponse;

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}
