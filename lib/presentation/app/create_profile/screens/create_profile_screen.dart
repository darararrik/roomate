import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        ProfileSetupRoute(),
        PreferencesRoute(),
        VerificationIntroRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        final totalPages = tabsRouter.pageCount;
        final activeIndex = tabsRouter.activeIndex + 1;
        return Scaffold(
          bottomNavigationBar: _bottomButtons(context, tabsRouter),
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
            leading: BB(
              onPressed: () {
                final prevIndex = tabsRouter.activeIndex - 1;
                if (prevIndex >= 0) {
                  tabsRouter.setActiveIndex(prevIndex);
                } else {
                  //TODO: Протестировать потом
                }
              },
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

  SafeArea _bottomButtons(BuildContext context, TabsRouter tabsRouter) {
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
                onPressed: () {
                  final nextIndex = tabsRouter.activeIndex + 1;
                  if (nextIndex < tabsRouter.pageCount) {
                    tabsRouter.setActiveIndex(nextIndex);
                  } else {}
                },
                text: context.l10n.next,
              ),
              if (tabsRouter.activeIndex == tabsRouter.pageCount - 1)
                SecondaryButton(
                  onPressed: () {
                    context.pushRoute(const ProfileSummaryRoute());
                  },
                  text: context.l10n.skip,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
