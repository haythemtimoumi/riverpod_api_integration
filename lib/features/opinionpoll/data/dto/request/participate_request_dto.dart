import 'package:freezed_annotation/freezed_annotation.dart';

part 'participate_request_dto.freezed.dart';
part 'participate_request_dto.g.dart';

@freezed
class ParticipateRequestDto with _$ParticipateRequestDto {
  const factory ParticipateRequestDto({
    required String userId,
    required String questionAnsweerId,
    String? userCustomAnswer,
  }) = _ParticipateRequestDto;

  factory ParticipateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ParticipateRequestDtoFromJson(json);

  static List<Map<String, dynamic>> toJsonList(
      List<ParticipateRequestDto> list) {
    return list.map((e) => e.toJson()).toList();
  }
}
