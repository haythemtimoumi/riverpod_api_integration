import 'package:arop/features/opinionpoll/data/dto/request/participate_request_dto.dart';

abstract class ParticipateOpinionPollRepository {
  Future<String> participate(List<ParticipateRequestDto> answers);
}
