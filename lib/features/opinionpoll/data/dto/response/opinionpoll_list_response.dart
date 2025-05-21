import 'package:freezed_annotation/freezed_annotation.dart';
import 'opinionpoll_response.dart';

part 'opinionpoll_list_response.freezed.dart';
part 'opinionpoll_list_response.g.dart';

@freezed
class OpinionPollListResponse with _$OpinionPollListResponse {
  const factory OpinionPollListResponse({
    required int statusCode,
    required String message,
    required List<OpinionPollResponse> response,
  }) = _OpinionPollListResponse;

  factory OpinionPollListResponse.fromJson(Map<String, dynamic> json) =>
      _$OpinionPollListResponseFromJson(json);
}
