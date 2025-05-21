import '../../domain/model/opinionpoll.dart';
import '../../domain/repositories/opinionpoll_repository.dart';
import '../datasource/remote/opinionpoll_api.dart';
import '../dto/response/opinionpoll_list_response.dart';
import '../../domain/mapper/opinionpoll_mapper.dart';

class OpinionPollRepositoryImpl implements OpinionPollRepository {
  final OpinionPollApi api;

  OpinionPollRepositoryImpl(this.api);

  @override
  Future<List<OpinionPoll>> fetchOpinionPolls() async {
    final response = await api.fetchOpinionPolls();
    return response.response.map((dto) => dto.toDomain()).toList();
  }
}
