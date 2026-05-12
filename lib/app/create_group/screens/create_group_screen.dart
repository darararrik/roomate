import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'create_group_screen.g.dart';

@riverpod
class CreateGroupStepIndex extends _$CreateGroupStepIndex {
  @override
  int build() => 0;

  void setStep(int value) => state = value;
}

@RoutePage()
class CreateGroupScreen extends ConsumerWidget {
  const CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionsAsync = ref.watch(getCreateGroupFormOptionsProvider);
    final flowState = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(createGroupFlowProvider.notifier);
    final l10n = context.l10n;
    final activeIndex = ref.watch(createGroupStepIndexProvider);
    final stepScreens = const [
      CreateGroupBasicInfoStepScreen(),
      CreateGroupLookingForStepScreen(),
      CreateGroupLifestyleStepScreen(),
      CreateGroupHouseholdStepScreen(),
      CreateGroupRulesStepScreen(),
      CreateGroupMediaStepScreen(),
      CreateGroupContactsStepScreen(),
      CreateGroupFinanceStepScreen(),
      CreateGroupDescriptionStepScreen(),
      CreateGroupConfirmationStepScreen(),
      CreateGroupFinishStepScreen(),
    ];

    final hideBottomBar = activeIndex >= 9;

    return Scaffold(
      bottomNavigationBar: hideBottomBar
          ? null
          : SafeArea(
              child: BottomNextButton(
                text: flowState.isSubmitting ? l10n.saving : l10n.next,
                onPressed: flowState.isSubmitting ? null : notifier.nextStep,
              ),
            ),
      appBar: AppBar(
        centerTitle: false,
        title: Text(notifier.getStepTitle(activeIndex)),
        actions: [
          CancelButton(title: l10n.exit, content: l10n.draftWillBeSaved),
        ],
        leading: BB(onPressed: notifier.previousStep),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(S.p16),
          child: Padding(
            padding: const P(horizontal: S.p32),
            child: _ProgressBarValue(
              currentIndex: activeIndex,
              totalPages: stepScreens.length,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const P(top: S.p20),
        child: optionsAsync.when(
          loading: () => const LoadingWidget(),
          error: (_, _) => const ErrorView(),
          data: (_) => stepScreens[activeIndex],
        ),
      ),
    );
  }
}

class _ProgressBarValue extends StatelessWidget {
  const _ProgressBarValue({
    required this.currentIndex,
    required this.totalPages,
  });

  final int currentIndex;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    final progress = totalPages <= 0 ? 0.0 : (currentIndex + 1) / totalPages;
    return ClipRRect(
      borderRadius: BorderRadius.circular(S.p12),
      child: LinearProgressIndicator(
        value: progress.clamp(0, 1),
        minHeight: S.p6,
        backgroundColor: context.colors.graysLight100,
        valueColor: AlwaysStoppedAnimation<Color>(context.colors.orange),
      ),
    );
  }
}
