import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'on_boarding_notifier.g.dart';

@riverpod
class OnBoardingNotifier extends _$OnBoardingNotifier {
  @override
  OnBoardingState build() {
    return OnBoardingState(
      steps: [
        QuizStepModel(
          question: ref.l10n.quizQ1Title,
          subQuestion: ref.l10n.quizQ1Subtitle,
          options: [ref.l10n.quizQ1Opt1, ref.l10n.quizQ1Opt2],
        ),
        QuizStepModel(
          question: ref.l10n.quizQ2Title,
          subQuestion: ref.l10n.quizQ2Subtitle,
          options: [ref.l10n.quizQ2Opt1],
          cancel: ref.l10n.quizQ2Opt2,
        ),
      ],
    );
  }

  void handleSelection({required int optionIndex}) {
    if (state.isFirstStep) {
      if (optionIndex == 0) {
        toUserPreferences();
        return;
      }
      state = state.copyWith(currentIndex: state.currentIndex + 1);
      return;
    }

    if (state.isLastStep) {
      toCreateAd();
    } else {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    }
  }

  void stepBack() {
    if (!state.isFirstStep) {
      state = state.copyWith(currentIndex: state.currentIndex - 1);
    }
  }

  // Future<void> skip() async {
  //   await ref.read(appStatusProvider.notifier).markProfileCompleted();
  //   ref.nav.replaceAll([const MainFlowRoute()]);
  // }

  void skipByOwner() async {
    await ref.read(appStatusProvider.notifier).markProfileCompleted();
    await ref.read(globalProfileProvider.notifier).updateProfile(isOwner: true);
    ref.nav.replaceAll([const MainFlowRoute()]);
  }

  void toUserPreferences() =>
      ref.nav.push(const UserPreferencesPageViewRoute());

  Future<void> toCreateAd() async {
    await ref.read(appStatusProvider.notifier).markProfileCompleted();
    ref.nav.replace(const VerificationIntroRoute());
  }
}
