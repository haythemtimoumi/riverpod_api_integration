import '../model/opinionpoll.dart';

abstract class OpinionPollRepository {
  Future<List<OpinionPoll>> fetchOpinionPolls();
}
