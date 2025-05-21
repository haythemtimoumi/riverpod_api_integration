import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arop/features/opinionpoll/data/dto/request/participate_request_dto.dart';
import 'package:arop/features/opinionpoll/data/repositories/participate_opinionpoll_repository_impl.dart';
import 'package:arop/features/opinionpoll/domain/repositories/participate_opinionpoll_repository.dart';
import 'package:arop/core/dio_client.dart';

final participateOpinionPollProvider =
    StateNotifierProvider<ParticipateOpinionPollNotifier, AsyncValue<String>>(
  (ref) => ParticipateOpinionPollNotifier(ref),
);

class ParticipateOpinionPollNotifier extends StateNotifier<AsyncValue<String>> {
  final Ref ref;
  late final ParticipateOpinionPollRepository _repository;

  ParticipateOpinionPollNotifier(this.ref) : super(const AsyncValue.data('')) {
    _repository = ParticipateOpinionPollRepositoryImpl(ref.read(dioProvider));
  }

  Future<String> submitAnswers(List<ParticipateRequestDto> answers) async {
    state = const AsyncValue.loading();
    try {
      final response = await _repository.participate(answers);
      state = AsyncValue.data(response);
      return response;
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
      rethrow;
    }
  }
}
