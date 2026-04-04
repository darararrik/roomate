import 'package:domain/domain.dart';

class OnBoardingState {
  OnBoardingState({this.currentIndex = 0, required this.steps});
  final int currentIndex;
  final List<QuizStepModel> steps;

  bool get isFirstStep => currentIndex == 0;
  bool get isLastStep => currentIndex >= steps.length - 1;
  QuizStepModel get currentStep => steps[currentIndex];

  OnBoardingState copyWith({int? currentIndex}) {
    return OnBoardingState(
      currentIndex: currentIndex ?? this.currentIndex,
      steps: steps,
    );
  }
}
