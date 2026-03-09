import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/models/quiz_step_model.dart';
import 'package:roomate/presentation/app/on_boarding/state/on_boarding_notifier.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class OnBoardingScreen extends HookConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(onBoardingProvider);
    final notifier = ref.read(onBoardingProvider.notifier);

    useMemoized(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        notifier.initSteps([
          QuizStepModel(
            question: l10n.quizQ1Title,
            subQuestion: l10n.quizQ1Subtitle,
            options: [l10n.quizQ1Opt1, l10n.quizQ1Opt2],
          ),
          QuizStepModel(
            question: l10n.quizQ2Title,
            subQuestion: l10n.quizQ2Subtitle,
            options: [l10n.quizQ2Opt1],
            cancel: l10n.quizQ2Opt2,
          ),
        ]);
      });
    });

    final currentStep = state.currentStep;
    if (currentStep == null) return const SizedBox.shrink();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (!state.isFirstStep) {
          notifier.stepBack();
        } else {
          context.pop();
        }
      },
      child: Scaffold(
        body: Background(
          child: SafeArea(
            child: Column(
              children: [
                _QuizAppBar(
                  showBackButton: !state.isFirstStep,
                  onBack: notifier.stepBack,
                  onClose: notifier.skipQuiz,
                ),
                Expanded(
                  child: Padding(
                    padding: const P(bottom: S.p325),
                    child: Center(
                      child: _QuizStepContent(
                        currentIndex: state.currentIndex,
                        currentStep: currentStep,
                        onOptionSelected: (answer) =>
                            notifier.selectOption(answer: answer),
                        onCancel: notifier.skipQuiz,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuizAppBar extends StatelessWidget {
  const _QuizAppBar({
    required this.showBackButton,
    required this.onBack,
    required this.onClose,
  });

  final bool showBackButton;
  final VoidCallback onBack;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      replacement: const SizedBox(height: S.p56),
      visible: showBackButton,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: context.colors.graysWhite,
          onPressed: onBack,
        ),
        actionsPadding: const P(right: S.p4),
        actions: [
          IconButton(
            onPressed: onClose,
            icon: const AppIcon(AppIcons.xBig, size: S.p32),
          ),
        ],
      ),
    );
  }
}

class _QuizStepContent extends StatelessWidget {
  const _QuizStepContent({
    required this.currentIndex,
    required this.currentStep,
    required this.onOptionSelected,
    required this.onCancel,
  });

  final int currentIndex;
  final QuizStepModel currentStep;
  final Function(String) onOptionSelected;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p12, vertical: S.p24),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysWhite,
          borderRadius: BorderRadius.circular(S.p28),
        ),
        child: Padding(
          padding: const P(horizontal: S.p12, bottom: S.p12, top: S.p24),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            alignment: Alignment.topCenter,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              switchInCurve: Curves.easeInOutCubic,
              switchOutCurve: Curves.easeOutCubic,
              layoutBuilder: (currentChild, previousChildren) {
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [...previousChildren, ?currentChild],
                );
              },
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: CurvedAnimation(
                    parent: animation,
                    curve: const Interval(0.2, 1.0, curve: Curves.easeIn),
                  ),
                  child: ScaleTransition(
                    scale: Tween<double>(begin: 0.95, end: 1.0).animate(
                      CurvedAnimation(parent: animation, curve: Curves.easeOut),
                    ),
                    child: SlideTransition(
                      position:
                          Tween<Offset>(
                            begin: const Offset(0.0, 0.05),
                            end: Offset.zero,
                          ).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOutCubic,
                            ),
                          ),
                      child: child,
                    ),
                  ),
                );
              },
              child: Column(
                key: ValueKey<int>(currentIndex),
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const P(vertical: S.p12),
                    child: Column(
                      children: [
                        Text(
                          currentStep.question,
                          style: context.typography.headline0,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: S.p16),
                        Text(
                          currentStep.subQuestion,
                          style: context.typography.headline2.copyWith(
                            color: context.colors.graysText700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: S.p16),
                  ...currentStep.options.map((optionText) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: S.p12),
                      child: OpacityButton(
                        radius: S.p16,
                        onPressed: () => onOptionSelected(optionText),
                        bgColor: context.colors.opacityOrange20,
                        child: Text(
                          optionText,
                          style: context.typography.activesButton.copyWith(
                            color: context.colors.orange,
                          ),
                        ),
                      ),
                    );
                  }),
                  if (currentStep.cancel != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: S.p12),
                      child: OpacityButton(
                        radius: S.p16,
                        onPressed: onCancel,
                        bgColor: context.colors.graysLight100,
                        child: Text(
                          currentStep.cancel!,
                          style: context.typography.activesButton.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
