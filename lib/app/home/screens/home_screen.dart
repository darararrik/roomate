import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ApartamentsTabRoute(),
        NeighboursTabRoute(),
        CoworkingTabRoute(),
      ],
      builder: (context, child, tabController) {
        return NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
                SliverAppBar(
                  // pinned: false,
                  floating: true,
                  centerTitle: true,
                  title: GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const RegionBottomSheet(),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          context.l10n.searchRegion,
                          style: context.typography.headline2,
                        ),
                        const SizedBox(height: S.p4),
                        Text(
                          'Омская область',
                          style: context.typography.headline1,
                        ),
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(S.p70),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: S.p16,
                        vertical: S.p12,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(S.p32),
                          color: context.colors.graysWhite,
                          border: Border.all(
                            color: context.colors.graysInput200,
                            width: S.p2,
                          ),
                        ),
                        child: TabBar(
                          controller: tabController,
                          tabs: [
                            Tab(text: context.l10n.apartments),
                            Tab(text: context.l10n.neighbours),
                            Tab(text: context.l10n.coworking),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
          body: child,
        );
      },
    );
  }
}
