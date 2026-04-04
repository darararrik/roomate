import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

@RoutePage()
class FillingProfileScreen extends StatelessWidget {
  const FillingProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        AuthEditFirstRoute(),
        AuthEditSecondRoute(),
        AuthEditThirdRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        final totalPages = tabsRouter.pageCount;
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            actions: [
              SizedBox(
                width: S.p56,
                child: Center(
                  child: Text(
                    "${tabsRouter.activeIndex + 1}/${tabsRouter.pageCount}",
                    style: context.typography.headline2,
                  ),
                ),
              ),
            ],
            leading: BB(
              onPressed: () {
                final prevIndex = tabsRouter.activeIndex - 1;
                if (prevIndex >= 0) {
                  tabsRouter.setActiveIndex(prevIndex);
                } else {
                  context.pop();
                }
              },
            ),
            title: Padding(
              padding: const P(horizontal: S.p86),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final progress =
                      (tabsRouter.activeIndex + 1) /
                      totalPages; // процент заполнения
                  return Stack(
                    children: [
                      Container(
                        height: S.p4,
                        decoration: BoxDecoration(
                          color: context.colors.fillsSecondary,
                          borderRadius: BorderRadius.circular(S.p4),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: S.p4,
                        width: constraints.maxWidth * progress,
                        decoration: BoxDecoration(
                          color: context.colors.orange,
                          borderRadius: BorderRadius.circular(S.p4),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          body: Padding(
            padding: const P(horizontal: S.p16),
            child: Column(
              children: [
                Expanded(child: child),
                // PrimaryButton(
                //   child: Text(context.l10n.next),
                //   onPressed: () {
                //     final nextIndex = tabsRouter.activeIndex + 1;
                //     if (nextIndex < tabsRouter.pageCount) {
                //       tabsRouter.setActiveIndex(nextIndex);
                //     } else {
                //       // или переход куда нужно
                //     }
                //   },
                // ),
                // Visibility(
                //   visible: tabsRouter.activeIndex == 2,
                //   replacement: const SizedBox(height: S.p40),
                //   child: Padding(
                //     padding: const P(bottom: S.p44, top: S.p12),
                //     child: PrimaryButton(
                //       style: ButtonStyle(
                //         backgroundColor: WidgetStatePropertyAll(
                //           context.colors.light100,
                //         ),
                //         foregroundColor: WidgetStatePropertyAll(
                //           context.colors.text400,
                //         ),
                //       ),
                //       child: Text(context.l10n.skip),
                //       onPressed: () =>
                //           context.replaceRoute(const MainFlowRoute()),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
