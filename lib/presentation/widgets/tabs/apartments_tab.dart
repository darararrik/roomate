import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/buttons/primary_btn.dart';
import 'package:roomate/presentation/widgets/chip_cards/ap_card.dart';
import 'package:roomate/presentation/widgets/chip_cards/filter_card.dart';

@RoutePage()
class ApartamentsTab extends StatelessWidget {
  const ApartamentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const P(top: S.p4, horizontal: S.p16),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: S.p48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const P(vertical: S.p4, horizontal: S.p8),
                children: [
                  FilterCard(
                    leading: const AppIcon(AppIcons.filter2, width: S.p24),
                    title: context.l10n.filters,
                  ),
                  const SizedBox(width: 12),
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, width: S.p24),
                    title: context.l10n.term,
                  ),
                  const SizedBox(width: 12),
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, width: S.p24),
                    title: context.l10n.district,
                  ),
                ],
              ),
            ),
          ),
        ),
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
        SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ApCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: S.p12);
          },
        ),
      ],
    );
  }
}
