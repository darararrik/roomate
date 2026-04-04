import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

@RoutePage(name: 'NeighboursTabRoute')
class NeighboursTab extends StatelessWidget {
  const NeighboursTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const P(horizontal: S.p16, vertical: S.p12),
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const P(horizontal: S.p8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${context.l10n.optionsFound} ${82}", style: context.typography.bodyTitle),
                  GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SortBottomSheet(),
                    ),

                    //TODO: сменить виджет
                    child: const AppIcon(AppIcons.sort, width: S.p32, height: S.p32),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16),
          sliver: SliverList.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return NeighbourCard(onTap: () => context.router.push(const AboutGroupRoute()));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: S.p12);
            },
          ),
        ),
      ],
    );
  }
}
