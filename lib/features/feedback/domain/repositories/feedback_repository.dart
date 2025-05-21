import '../model/feedback_model.dart';

abstract class FeedbackRepository {
  Future<void> submitFeedback(FeedbackModel feedback);
}
