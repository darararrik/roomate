import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_profile/state/create_profile_notifier.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

@RoutePage()
class CreateProfileScreen extends ConsumerWidget {
  const CreateProfileScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(createProfileProvider.notifier);
    final _ = ref.watch(createProfileProvider);
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        ProfileSetupRoute(),
        PreferencesRoute(),
        VerificationIntroRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ListenableBuilder(
          listenable: tabsRouter,
          builder: (context, _) {
            final totalPages = tabsRouter.pageCount;
            final activeIndex = tabsRouter.activeIndex + 1;
            return Scaffold(
              bottomNavigationBar: _bottomButtons(
                context,
                tabsRouter,
                ref,
                notifier,
              ),
              appBar: AppBar(
                centerTitle: true,
                title: SizedBox(
                  width: S.p100,
                  child: ProgressBarWidget(
                    tabsRouter: tabsRouter,
                    totalPages: totalPages,
                  ),
                ),
                actionsPadding: const P(right: S.p16),
                actions: [
                  Text(
                    "$activeIndex/$totalPages",
                    style: context.typography.headline2,
                  ),
                ],
                leading: BB(onPressed: () => notifier.onPop(tabsRouter)),
              ),
              body: child,
            );
          },
        );
      },
    );
  }

  SafeArea _bottomButtons(
    BuildContext context,
    TabsRouter tabsRouter,
    WidgetRef ref,
    CreateProfileNotifier notifier,
  ) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysWhite,
          boxShadow: [context.colors.bottomNavBarShadow],
        ),
        child: Padding(
          padding: const P(horizontal: S.p16, vertical: S.p20),
          child: Column(
            mainAxisSize: .min,
            spacing: S.p12,
            children: [
              PrimaryButton(
                onPressed: () => notifier.onNextStep(tabsRouter),
                text: notifier.titleButton(tabsRouter),
              ),
              if (tabsRouter.activeIndex == tabsRouter.pageCount - 1)
                SecondaryButton(
                  onPressed: notifier.onSkip,
                  text: context.l10n.skip,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
