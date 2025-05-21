import 'package:freezed_annotation/freezed_annotation.dart';
import 'question_response.dart';

part 'opinionpoll_response.freezed.dart';
part 'opinionpoll_response.g.dart';

@freezed
class OpinionPollResponse with _$OpinionPollResponse {
  const factory OpinionPollResponse({
    required String id,
    required String opinionPollName,
    required List<QuestionResponse> questionList,
  }) = _OpinionPollResponse;

  factory OpinionPollResponse.fromJson(Map<String, dynamic> json) =>
      _$OpinionPollResponseFromJson(json);
}
