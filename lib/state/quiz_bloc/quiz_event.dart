part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.optionSelected({required String answer, required int totalSteps}) = _OptionSelected;
  const factory QuizEvent.stepBack() = _StepBack;
}
