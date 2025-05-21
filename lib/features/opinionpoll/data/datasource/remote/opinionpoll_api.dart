import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../dto/response/opinionpoll_list_response.dart';

part 'opinionpoll_api.g.dart';

@RestApi()
abstract class OpinionPollApi {
  factory OpinionPollApi(Dio dio, {String baseUrl}) = _OpinionPollApi;

  @GET('/opinionpoll/check-new-opinionpoll')
  Future<OpinionPollListResponse> fetchOpinionPolls();
}
