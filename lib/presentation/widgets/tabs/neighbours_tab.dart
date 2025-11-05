import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/chip_cards/ap_card.dart';
import 'package:roomate/presentation/widgets/chip_cards/neighbour_card.dart';
import 'package:roomate/presentation/widgets/overlapping_avatars.dart';

@RoutePage()
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
                  Text("${context.l10n.optionsFound} ${82}", style: context.textStyle.bodyTitle),
                  const AppIcon(AppIcons.sort, width: S.p32),
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
