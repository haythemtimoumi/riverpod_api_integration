import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import '../dto/feedback_request_dto.dart';
import '../datasource/remote_feedback_api.dart';
import '../../domain/model/feedback_model.dart';
import '../../domain/mapper/feedback_mapper.dart';
import '../../domain/repositories/feedback_repository.dart';

class FeedbackRepositoryImpl implements FeedbackRepository {
  final RemoteFeedbackApi api;

  FeedbackRepositoryImpl(this.api);

  @override
  Future<void> submitFeedback(FeedbackModel feedback) async {
    final dto = feedback.toDto();
    final files = await dto.toMultipartFiles();
    await api.submitFeedback(
      dto.typeFeedback,
      dto.customFeedback,
      files,
    );
  }
}
