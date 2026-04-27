import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

@RoutePage()
class NeighboursScreen extends StatelessWidget {
  const NeighboursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MainAppBar(
            bottom: ListControlsAppBarBottom(
              optionsCount: 82,
              onFiltersTap: () => context.pushRoute(const FiltersRoute()),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16, top: S.p12),
            sliver: SliverList.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return NeighbourCard(
                  onTap: () => context.router.push(const AboutGroupRoute()),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: S.p12);
              },
            ),
          ),
        ],
      ),
    );
  }
}
