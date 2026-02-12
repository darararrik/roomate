import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/models/quiz_step_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/state/quiz/quiz_provider.dart';

@RoutePage()
class QuizScreen extends HookConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(quizProvider);
    final notifier = ref.read(quizProvider.notifier);

    final steps = [
      QuizStepModel(
        question: l10n.quiz_q1_title,
        subQuestion: l10n.quiz_q1_subtitle,
        options: [l10n.quiz_q1_opt1, l10n.quiz_q1_opt2, l10n.quiz_q1_opt3],
      ),
      QuizStepModel(
        question: l10n.quiz_q2_title,
        subQuestion: l10n.quiz_q2_subtitle,
        options: [l10n.quiz_q2_opt1, l10n.quiz_q2_opt2],
      ),
    ];

    ref.listen(quizProvider.select((s) => s.status), (prev, next) {
      if (next == QuizStatus.completed) {
        context.replaceRoute(const CreateAdRoute());
      }
    });

    final isFirstStep = state.currentIndex == 0;

    return PopScope(
      canPop: isFirstStep,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        notifier.stepBack();
      },
      child: Scaffold(
        body: Background(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const P(horizontal: S.p4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BB(
                        color: context.colors.white,
                        onPressed: () {
                          if (state.currentIndex > 0) {
                            notifier.stepBack();
                          } else {
                            context.pop();
                          }
                        },
                      ),
                      IconButton(
                        onPressed: () =>
                            context.replaceRoute(const NavBarRoute()),
                        icon: const AppIcon(AppIcons.xBig, size: S.p32),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const P(bottom: S.p325),
                    child: Center(
                      child: state.currentIndex >= steps.length
                          ? const SizedBox()
                          : _QuizStepContent(
                              currentIndex: state.currentIndex,
                              currentStep: steps[state.currentIndex],
                              totalSteps: steps.length,
                              onOptionSelected: (answer) {
                                notifier.selectOption(
                                  answer: answer,
                                  totalSteps: steps.length,
                                );
                              },
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

class _QuizStepContent extends StatelessWidget {
  const _QuizStepContent({
    required this.currentIndex,
    required this.currentStep,
    required this.totalSteps,
    required this.onOptionSelected,
  });

  final int currentIndex;
  final QuizStepModel currentStep;
  final int totalSteps;
  final Function(String) onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p12, vertical: S.p24),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(S.p32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
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
                            color: context.colors.text700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: S.p16),
                  ...currentStep.options.asMap().entries.map((entry) {
                    final int index = entry.key;
                    final String optionText = entry.value;
                    final bool isLast = index == currentStep.options.length - 1;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: S.p12),
                      child: PrimaryButton.filled(
                        onPressed: !isLast
                            ? () => onOptionSelected(optionText)
                            : () => context.replaceRoute(const NavBarRoute()),
                        color: isLast
                            ? context.colors.light100
                            : context.colors.orange20,
                        titleText: Text(
                          optionText,
                          style: context.typography.activesButton.copyWith(
                            color: isLast
                                ? context.colors.text400
                                : context.colors.orange,
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
