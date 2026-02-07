import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:roomate/domain/models/quiz_step_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/state/quiz_bloc/quiz_bloc.dart';

@RoutePage()
class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => QuizBloc(), child: _QuizContent());
  }
}

class _QuizContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

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

    return BlocConsumer<QuizBloc, QuizState>(
      listenWhen: (prev, curr) => prev.status != curr.status,
      listener: (context, state) {
        if (state.status == QuizStatus.completed) {
          //TODO: Потом добавить логику
        }
      },
      builder: (context, state) {
        final isFirstStep = state.currentIndex == 0;
        return PopScope(
          canPop: isFirstStep,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            context.read<QuizBloc>().add(const QuizEvent.stepBack());
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
                                context.read<QuizBloc>().add(
                                  const QuizEvent.stepBack(),
                                );
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
                              : buildContent(
                                  context,
                                  state,
                                  steps[state.currentIndex],
                                  steps.length,
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
      },
    );
  }

  Padding buildContent(
    BuildContext context,
    QuizState state,
    QuizStepModel currentStep,
    int totalSteps,
  ) {
    return Padding(
      padding: const P(horizontal: S.p12, vertical: S.p24),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(S.p32),
        ),
        child: Padding(
          padding: const P(horizontal: S.p12, bottom: S.p12, top: S.p24),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
            alignment: Alignment.topCenter,

            //alignment: Alignment.center,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              switchInCurve: Curves.easeInOutCubic,
              switchOutCurve: Curves.easeInOutCubic,

              layoutBuilder: (currentChild, previousChildren) {
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [...previousChildren, ?currentChild],
                );
              },

              transitionBuilder: (child, animation) {
                final offsetAnimation = Tween<Offset>(
                  begin: const Offset(0.0, 0.1),
                  end: Offset.zero,
                ).animate(animation);

                final fadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
                    .animate(
                      CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      ),
                    );
                return FadeTransition(
                  opacity: fadeAnimation,
                  child: SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  ),
                );
              },

              child: Column(
                key: ValueKey<int>(state.currentIndex),
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
                            ? () => context.read<QuizBloc>().add(
                                QuizEvent.optionSelected(
                                  answer: optionText,
                                  totalSteps: totalSteps,
                                ),
                              )
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
