import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../dto/request/participate_request_dto.dart';

part 'participate_opinionpoll_api.g.dart';

@RestApi()
abstract class ParticipateOpinionPollApi {
  factory ParticipateOpinionPollApi(Dio dio, {String baseUrl}) =
      _ParticipateOpinionPollApi;

  @POST('/opinionpoll/participate')
  Future<dynamic> participate(@Body() List<ParticipateRequestDto> request);
}
