class QuizStepModel {
  const QuizStepModel({
    required this.question,
    required this.subQuestion,
    required this.options,
    this.cancel,
  });
  final String question;
  final String subQuestion;
  final List<String> options;
  final String? cancel;
}
