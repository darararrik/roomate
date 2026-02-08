import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_provider.freezed.dart';
part 'quiz_provider.g.dart';

enum QuizStatus { initial, completed }

@freezed
abstract class QuizState with _$QuizState {
  const factory QuizState({
    @Default(0) int currentIndex,
    @Default(QuizStatus.initial) QuizStatus status,
    @Default([]) List<String> answers,
  }) = _QuizState;
}

@riverpod
class QuizNotifier extends _$QuizNotifier {
  @override
  QuizState build() {
    return const QuizState();
  }

  void selectOption({required String answer, required int totalSteps}) {
    final nextIndex = state.currentIndex + 1;
    final newAnswers = [...state.answers, answer];

    if (nextIndex >= totalSteps) {
      state = state.copyWith(
        currentIndex: nextIndex,
        answers: newAnswers,
        status: QuizStatus.completed,
      );
    } else {
      state = state.copyWith(currentIndex: nextIndex, answers: newAnswers);
    }
  }

  void stepBack() {
    if (state.currentIndex > 0) {
      final newAnswers = state.answers.isNotEmpty
          ? state.answers.sublist(0, state.answers.length - 1)
          : state.answers;
      state = state.copyWith(
        currentIndex: state.currentIndex - 1,
        answers: newAnswers,
      );
    }
  }
}
