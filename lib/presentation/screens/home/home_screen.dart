import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/drag_handle.dart';
import 'package:roomate/presentation/widgets/input_widget.dart';
import 'package:roomate/presentation/widgets/region_bottom_sheet.dart';

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
              title: TextButton(
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const RegionBottomSheet(),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(context.l10n.searchRegion, style: context.textStyle.headline2),
                    const SizedBox(height: S.p4),
                    Text('Омская область', style: context.textStyle.headline1),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(S.p70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: S.p16, vertical: S.p12),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(S.p32),
                      color: context.colors.white,
                      border: Border.all(color: context.colors.input200, width: S.p2),
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
