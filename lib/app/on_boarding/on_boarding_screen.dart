import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/on_boarding/state/on_boarding_notifier.dart';
import 'package:roomate/app/on_boarding/state/on_boarding_state.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

@RoutePage()
class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onBoardingProvider);
    final notifier = ref.read(onBoardingProvider.notifier);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        if (!state.isFirstStep) {
          notifier.stepBack();
        }
      },
      child: Scaffold(
        body: Background(
          child: SafeArea(
            child: Column(
              children: [
                _QuizAppBar(showBackButton: !state.isFirstStep, onBack: notifier.stepBack),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: S.p64),
                    child: Center(
                      child: _QuizStepContent(
                        state: state,
                        onOptionSelected: (index) => notifier.handleSelection(optionIndex: index),
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
  const _QuizAppBar({required this.showBackButton, required this.onBack});
  final bool showBackButton;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: S.p56,
      padding: const P(horizontal: S.p4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (showBackButton) ...[
            BackButton(color: context.colors.graysWhite, onPressed: onBack),
            Consumer(
              builder: (context, ref, child) {
                return IconButton(
                  onPressed: () => ref.read(onBoardingProvider.notifier).skipByOwner(),
                  icon: AppIcon(AppIcons.xBig, width: S.p32, height: S.p32, color: context.colors.graysWhite),
                );
              },
            ),
          ] else
            const SizedBox(width: S.p48),
        ],
      ),
    );
  }
}

class _QuizStepContent extends StatelessWidget {
  const _QuizStepContent({required this.state, required this.onOptionSelected});
  final OnBoardingState state;
  final Function(int) onOptionSelected;

  @override
  Widget build(BuildContext context) {
    final step = state.currentStep;

    return Padding(
      padding: const P(horizontal: S.p12),
      child: DecoratedBox(
        decoration: BoxDecoration(color: context.colors.graysWhite, borderRadius: BorderRadius.circular(S.p28)),
        child: AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          child: Padding(
            padding: const P(horizontal: S.p16, bottom: S.p16, top: S.p24),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              layoutBuilder: (currentChild, previousChildren) {
                return Stack(alignment: Alignment.topCenter, children: [...previousChildren, ?currentChild]);
              },
              child: Column(
                key: ValueKey<int>(state.currentIndex),
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(step.question, style: context.typography.headline0, textAlign: TextAlign.center),
                  const SizedBox(height: S.p12),
                  Text(
                    step.subQuestion,
                    style: context.typography.headline2.copyWith(color: context.colors.graysText700),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: S.p24),
                  ...List.generate(step.options.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: S.p12),
                      child: OpacityButton(
                        radius: S.p16,
                        onPressed: () => onOptionSelected(index),
                        bgColor: context.colors.opacityOrange20,
                        color: context.colors.orange,
                        text: step.options[index],
                      ),
                    );
                  }),
                  if (step.cancel != null)
                    Consumer(
                      builder: (context, ref, child) {
                        return OpacityButton(
                          radius: S.p16,
                          onPressed: () => ref.read(onBoardingProvider.notifier).skipByOwner(),
                          bgColor: context.colors.graysLight100,
                          text: step.cancel!,
                          color: context.colors.graysText400,
                        );
                      },
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
