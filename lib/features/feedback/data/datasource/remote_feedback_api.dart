import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/constants.dart';
import '../dto/feedback_request_dto.dart';

part 'remote_feedback_api.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class RemoteFeedbackApi {
  factory RemoteFeedbackApi(Dio dio, {String baseUrl}) = _RemoteFeedbackApi;

  @POST("feedback")
  @MultiPart()
  Future<void> submitFeedback(
    @Part(name: 'typeFeedback') String typeFeedback,
    @Part(name: 'customFeedback') String? customFeedback,
    @Part(name: 'files') List<MultipartFile> files,
  );
}
