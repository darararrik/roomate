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
    return OnBoardingState(
      steps: [
        QuizStepModel(
          question: ref.l10n.quizQ1Title, // "Кто вы?"
          subQuestion: ref.l10n.quizQ1Subtitle,
          options: [
            ref.l10n.quizQ1Opt2, // "Ищу жилье" (Index 0)
            ref.l10n.quizQ1Opt1, // "Хочу сдать" (Index 1)
          ],
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

  /// Обработка выбора опции с разными исходами
  void handleSelection({required int optionIndex}) {
    // 1. Логика первого шага (Роль)
    if (state.isFirstStep) {
      if (optionIndex == 1) {
        // Выбрал "Ищу квартиру" -> Сразу на создагние профиля
        toCreateProfile();
        return;
      }
      // Иначе (Сдать помещение) -> Идем на следующий шаг квиза
      state = state.copyWith(currentIndex: state.currentIndex + 1);
      return;
    }

    // 2. Логика последнего шага (для тех, кто сдает)
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

  void skip() => ref.nav.replaceAll([const MainFlowRoute()]);
  void toCreateProfile() => ref.nav.push(const CreateProfileRoute());
  void toCreateAd() => ref.nav.push(const CreateAdRoute());
}
