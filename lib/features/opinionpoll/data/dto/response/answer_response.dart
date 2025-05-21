import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_response.freezed.dart';
part 'answer_response.g.dart';

@freezed
class AnswerResponse with _$AnswerResponse {
  const factory AnswerResponse({
    required String userId,
    required String questionAnsweerId,
    String? userCustomAnswer, 
  }) = _AnswerResponse;

  factory AnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerResponseFromJson(json);
}
