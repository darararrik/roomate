import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/models/quiz_step_model.dart';
import 'package:roomate/presentation/app/on_boarding/state/on_boarding_state.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/extensions.dart';

part 'on_boarding_notifier.g.dart';

@riverpod
class OnBoardingNotifier extends _$OnBoardingNotifier {
  @override
  OnBoardingState build() {
    return const OnBoardingState();
  }

  void initSteps(List<QuizStepModel> steps) {
    if (state.steps.isEmpty) {
      state = state.copyWith(steps: steps);
    }
  }

  void selectOption({required String answer}) {
    final currentStep = state.currentStep;
    if (currentStep == null) return;

    final optionIndex = currentStep.options.indexOf(answer);
    final nextIndex = state.currentIndex + 1;
    final newAnswers = [...state.answers, answer];

    // logic for role selection on the FIRST step
    if (state.currentIndex == 0) {
      final isOwner = optionIndex == 1; // "Хочу сдать помещение"

      if (isOwner) {
        state = state.copyWith(
          status: OnBoardingStatusEnum.owner,
          answers: newAnswers,
        );
        //     ref.nav.goToNavBar();
        return; // Break here, owners don't need more questions
      }

      // If tenant, just update status and let it fall through to next index logic
      state = state.copyWith(status: OnBoardingStatusEnum.tenant);
    }

    // Checking for the end of the quiz for tenants
    if (nextIndex >= state.steps.length) {
      ref.nav.replace(const CreateAdRoute());
    } else {
      state = state.copyWith(currentIndex: nextIndex, answers: newAnswers);
    }
  }

  void skipQuiz() => {};

  void stepBack() {
    if (!state.isFirstStep) {
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
