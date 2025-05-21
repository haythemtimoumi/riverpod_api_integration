import 'dart:io';
import '../../data/dto/feedback_request_dto.dart';
import '../model/feedback_model.dart';

extension FeedbackMapper on FeedbackModel {
  FeedbackRequestDto toDto() {
    final files = filePaths.map((path) => File(path)).toList();
    return FeedbackRequestDto(
      typeFeedback: typeFeedback,
      customFeedback: customFeedback,
      fileList: files,
    );
  }
}
