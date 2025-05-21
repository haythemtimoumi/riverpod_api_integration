class FeedbackModel {
  final String typeFeedback;
  final String? customFeedback;
  final List<String> filePaths; // Just for preview/storage (local paths)

  FeedbackModel({
    required this.typeFeedback,
    this.customFeedback,
    required this.filePaths,
  });
}
