import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/sheets/sort_bottom_sheet.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

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
                  Text(
                    "${context.l10n.optionsFound} ${82}",
                    style: context.typography.bodyTitle,
                  ),
                  GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SortBottomSheet(),
                    ),
                    child: const AppIcon(AppIcons.sort, size: S.p32),
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
    );
  }
}
