import 'package:freezed_annotation/freezed_annotation.dart';
import 'answer_response.dart';

part 'option_response.freezed.dart';
part 'option_response.g.dart';

@freezed
class OptionResponse with _$OptionResponse {
  const factory OptionResponse({
    required String id,
    required String option,
    required List<AnswerResponse> userAnswerOpinionPollRequestModels,
  }) = _OptionResponse;

  factory OptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OptionResponseFromJson(json);
}
