import 'package:dio/dio.dart';
import 'package:arop/features/opinionpoll/data/dto/request/participate_request_dto.dart';
import 'package:arop/features/opinionpoll/data/datasource/remote/participate_opinionpoll_api.dart';
import 'package:arop/features/opinionpoll/domain/repositories/participate_opinionpoll_repository.dart';

class ParticipateOpinionPollRepositoryImpl
    implements ParticipateOpinionPollRepository {
  final ParticipateOpinionPollApi _api;

  ParticipateOpinionPollRepositoryImpl(Dio dio)
      : _api = ParticipateOpinionPollApi(dio);

  @override
  Future<String> participate(List<ParticipateRequestDto> answers) async {
    try {
      final rawResponse = await _api.participate(answers);

      print('🔵 Dio Raw Response Type: ${rawResponse.runtimeType}');
      print('🔵 Dio Raw Response: $rawResponse');

      // Since it's already a Map<String, dynamic>, use it directly
      final responseData = rawResponse as Map<String, dynamic>;

      if (responseData.containsKey('message')) {
        print('✅ Success Message: ${responseData['message']}');
        return responseData['message'];
      }

      if (responseData.containsKey('errorMessage')) {
        print('❌ Error Message: ${responseData['errorMessage']}');
        throw Exception(responseData['errorMessage']);
      }

      return 'Answer submitted successfully';
    } on DioException catch (e) {
      print('❗ DioException: ${e.message}');
      if (e.response?.data != null) {
        print('❗ Dio Error Data: ${e.response?.data}');
        final errorData = e.response!.data;
        if (errorData is Map<String, dynamic>) {
          throw Exception(errorData['errorMessage'] ?? 'Submission failed');
        }
      }
      throw Exception('Network error: ${e.message}');
    }
  }
}
