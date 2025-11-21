import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_bloc.freezed.dart';
part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(const QuizState()) {
    on<_OptionSelected>(_onOptionSelected);
    on<_StepBack>(_onStepBack);
  }

  void _onOptionSelected(_OptionSelected event, Emitter<QuizState> emit) {
    final updatedAnswers = List<String>.from(state.selectedAnswers)..add(event.answer);
    //TODO: Сюда потом логику засунуть
    if (state.currentIndex < event.totalSteps - 1) {
      emit(
        state.copyWith(
          currentIndex: state.currentIndex + 1,
          selectedAnswers: updatedAnswers,
          status: QuizStatus.inProgress,
        ),
      );
    } else {
      emit(state.copyWith(selectedAnswers: updatedAnswers, status: QuizStatus.completed));
    }
  }

  // Логика шага назад
  void _onStepBack(_StepBack event, Emitter<QuizState> emit) {
    if (state.currentIndex > 0) {
      // Удаляем последний записанный ответ, чтобы держать стейт чистым
      final updatedAnswers = List<String>.from(state.selectedAnswers);
      if (updatedAnswers.isNotEmpty) {
        updatedAnswers.removeLast();
      }

      emit(
        state.copyWith(
          currentIndex: state.currentIndex - 1,
          selectedAnswers: updatedAnswers,
          status: QuizStatus.inProgress,
        ),
      );
    }
  }
}
