import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

class OwnerOverviewContent extends ConsumerWidget {
  const OwnerOverviewContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeProvider.notifier);

    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        OverviewActionGrid(
          children: [
            HomeActionCard(
              title: context.l10n.myAdvertisements,
              imagePath: AppIcons.myRents,
              onTap: notifier.openMyAdvertisements,
            ),
            HomeActionCard(
              title: context.l10n.tenantApplications,
              imagePath: AppIcons.request,
              imageWidth: 86,
              imageHeight: 86,
              onTap: notifier.openMyAdvertisements,
            ),
            HomeActionCard(
              title: context.l10n.myTransactions,
              imagePath: AppIcons.deal,
              onTap: notifier.openApartments,
            ),
            HomeActionCard(
              title: context.l10n.analytics,
              imagePath: AppIcons.deal,
              onTap: notifier.openCoworking,
            ),
          ],
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16),
          sliver: SliverToBoxAdapter(
            child: OpacityButton(
              height: S.p56,
              onPressed: notifier.openCreateAd,
              color: context.colors.orange,
              bgColor: context.colors.opacityOrange20,
              icon: AppIcon(AppIcons.edit2, color: context.colors.orange),
              child: const Text("Разместить объявление"),
            ),
          ),
        ),
      ],
    );
  }
}
