import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class CreateGroupScreen extends ConsumerWidget {
  const CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionsAsync = ref.watch(getCreateGroupFormOptionsProvider);
    final flowState = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(createGroupFlowProvider.notifier);
    final l10n = context.l10n;

    return AutoTabsRouter.pageView(
      routes: const [
        CreateGroupBasicInfoStepRoute(),
        CreateGroupLookingForStepRoute(),
        CreateGroupLifestyleStepRoute(),
        CreateGroupHouseholdStepRoute(),
        CreateGroupRulesStepRoute(),
        CreateGroupMediaStepRoute(),
        CreateGroupContactsStepRoute(),
        CreateGroupFinanceStepRoute(),
        CreateGroupDescriptionStepRoute(),
        CreateGroupConfirmationStepRoute(),
        CreateGroupFinishStepRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        final hideBottomBar = tabsRouter.activeIndex >= 9;

        return Scaffold(
          bottomNavigationBar: hideBottomBar
              ? null
              : SafeArea(
                  child: BottomNextButton(
                    text: flowState.isSubmitting ? l10n.saving : l10n.next,
                    onPressed: flowState.isSubmitting ? null : () => notifier.nextStep(tabsRouter),
                  ),
                ),
          appBar: AppBar(
            centerTitle: false,
            title: Text(notifier.getStepTitle(tabsRouter.activeIndex)),
            actions: [
              CancelButton(
                title: l10n.exitTitle,
                content: l10n.draftWillBeSaved,
                onConfirm: () => context.router.maybePop(),
              ),
            ],
            leading: BB(onPressed: () => notifier.previousStep(tabsRouter)),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(S.p16),
              child: Padding(
                padding: const P(horizontal: S.p32),
                child: ProgressBarWidget(tabsRouter: tabsRouter, totalPages: tabsRouter.pageCount),
              ),
            ),
          ),
          body: Padding(
            padding: const P(top: S.p20),
            child: optionsAsync.when(
              loading: () => const LoadingWidget(),
              error: (_, _) => const ErrorView(),
              data: (_) => child,
            ),
          ),
        );
      },
    );
  }
}
