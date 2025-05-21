import '../../data/dto/response/opinionpoll_response.dart';
import '../model/opinionpoll.dart';
import 'question_mapper.dart';

extension OpinionPollMapper on OpinionPollResponse {
  OpinionPoll toDomain() {
    return OpinionPoll(
      id: id,
      opinionPollName: opinionPollName,
      questions: questionList.map((e) => e.toDomain()).toList(),
    );
  }
}
