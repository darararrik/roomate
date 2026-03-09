import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/models/quiz_step_model.dart';

part 'on_boarding_state.freezed.dart';

enum OnBoardingStatusEnum { initial, tenant, owner }

@freezed
sealed class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(0) int currentIndex,
    @Default(OnBoardingStatusEnum.initial) OnBoardingStatusEnum status,
    @Default([]) List<String> answers,
    @Default([]) List<QuizStepModel> steps,
  }) = _OnBoardingState;

  const OnBoardingState._();

  bool get isFirstStep => currentIndex == 0;
  QuizStepModel? get currentStep =>
      currentIndex < steps.length ? steps[currentIndex] : null;
}
