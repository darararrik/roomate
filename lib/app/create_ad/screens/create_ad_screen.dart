import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class CreateAdScreen extends ConsumerWidget {
  const CreateAdScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionsAsync = ref.watch(getAdFormOptionsProvider);
    ref.listen(createAdFlowProvider, (previous, next) {});

    final notifier = ref.read(createAdFlowProvider.notifier);
    return AutoTabsRouter.pageView(
      routes: const [
        RentTypeStepRoute(),
        RoomTypeStepRoute(),
        PropertyTypeStepRoute(),
        LocationStepRoute(),
        InputDetailsApStepRoute(),
        AddMediaStepRoute(),
        FeaturesFirstStepRoute(),
        FeaturesSecondStepRoute(),
        DealTermsStepRoute(),
        DescriptionAdStepRoute(),
        ContactsStepRoute(),
        AdConfirmationRoute(),
        FinishRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar: SafeArea(
            child: BottomNextButton(onPressed: () => notifier.nextStep(tabsRouter)),
          ),
          appBar: AppBar(
            centerTitle: false,
            title: Text(notifier.getStepTitle(tabsRouter.activeIndex)),
            actions: [
              CancelButton(title: context.l10n.exit, content: context.l10n.draftWillBeSaved),
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
              data: (options) {
                return child;
              },
            ),
          ),
        );
      },
    );
  }
}
