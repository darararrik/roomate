import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad.dart';
import 'package:roomate/presentation/constants/spacing.dart';

import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/buttons/b_b.dart';
import 'package:roomate/presentation/widgets/buttons/bottom_button.dart';
import 'package:roomate/presentation/widgets/buttons/cancel_button.dart';
import 'package:roomate/presentation/widgets/common/progress_bar_widget.dart';

@RoutePage()
class CreateAdScreen extends ConsumerWidget {
  const CreateAdScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        ResultAdRoute(),
        FinishRoute(),
      ],
      builder: (context, child, pageController) {
        final notifier = ref.read(createAdProvider.notifier);
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
            child: child,
          ),
        );
      },
    );
  }
}
