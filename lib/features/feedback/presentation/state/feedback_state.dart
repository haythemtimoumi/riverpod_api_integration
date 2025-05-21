import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/model/feedback_model.dart';
import '../../domain/repositories/feedback_repository.dart';
import '../../../../core/dio_client.dart';
import '../../data/repositories/feedback_repository_impl.dart';
import '../../data/datasource/remote_feedback_api.dart';

final feedbackStateProvider =
    StateNotifierProvider<FeedbackStateNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(feedbackRepositoryProvider);
  return FeedbackStateNotifier(repository);
});

class FeedbackStateNotifier extends StateNotifier<AsyncValue<void>> {
  final FeedbackRepository repository;

  FeedbackStateNotifier(this.repository) : super(const AsyncValue.data(null));

  Future<void> submitFeedback(FeedbackModel feedback) async {
    state = const AsyncValue.loading();
    try {
      await repository.submitFeedback(feedback);
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final feedbackRepositoryProvider = Provider<FeedbackRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final api = RemoteFeedbackApi(dio);
  return FeedbackRepositoryImpl(api);
});
