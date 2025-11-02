import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/p.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [ApartamentsTab(), NeighboursTab(), CoworkingTab()],
      builder: (context, child, tabController) {
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(context.l10n.searchRegion, style: context.appTextStyle.headline2),
                  const SizedBox(height: S.p4),
                  Text('Омская область', style: context.appTextStyle.headline1),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(S.p70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: S.p16, vertical: S.p12),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(S.p32),
                      color: context.appColors.white,
                      border: Border.all(color: context.appColors.input200, width: S.p2),
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
