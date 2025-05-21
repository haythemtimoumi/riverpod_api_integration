import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasource/remote/opinionpoll_api.dart';
import '../../data/repositories/opinionpoll_repository_impl.dart';
import '../../domain/model/opinionpoll.dart';
import '../../domain/repositories/opinionpoll_repository.dart';
import '../../domain/mapper/opinionpoll_mapper.dart';
import '../../../../core/dio_client.dart';
import '../../../../core/constants.dart';

final opinionPollRepositoryProvider = Provider<OpinionPollRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final api = OpinionPollApi(dio, baseUrl: AppConstants.baseUrl);
  return OpinionPollRepositoryImpl(api);
});

// 2️⃣ Async fetch provider
final fetchOpinionPollsProvider =
    FutureProvider<List<OpinionPoll>>((ref) async {
  final repo = ref.watch(opinionPollRepositoryProvider);
  return await repo.fetchOpinionPolls();
});
