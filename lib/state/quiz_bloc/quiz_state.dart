part of 'quiz_bloc.dart';

// --- ENUMS (Для логики, чтобы не зависеть от перевода) ---
enum QuizStatus { initial, inProgress, completed }

@freezed
abstract class QuizState with _$QuizState {
  const factory QuizState({
    @Default(0) int currentIndex,
    @Default(QuizStatus.initial) QuizStatus status,
    @Default([]) List<String> selectedAnswers,
  }) = _QuizState;
}
