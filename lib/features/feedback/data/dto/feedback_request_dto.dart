import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_request_dto.freezed.dart';
part 'feedback_request_dto.g.dart';

@freezed
class FeedbackRequestDto with _$FeedbackRequestDto {
  const factory FeedbackRequestDto({
    required String typeFeedback,
    String? customFeedback,
    @JsonKey(ignore: true) @Default([]) List<File> fileList,
  }) = _FeedbackRequestDto;

  factory FeedbackRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FeedbackRequestDtoFromJson(json);
}

extension MultipartFileConverter on FeedbackRequestDto {
  Future<List<MultipartFile>> toMultipartFiles() async {
    return Future.wait(
      fileList.map((file) async {
        final fileName = file.path.split('/').last;
        return await MultipartFile.fromFile(file.path, filename: fileName);
      }),
    );
  }
}
