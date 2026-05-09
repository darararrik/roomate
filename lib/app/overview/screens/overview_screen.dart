import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class OverviewScreen extends ConsumerWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOwner = ref.watch(
      globalProfileProvider.select((state) => state.value?.isOwner ?? false),
    );

    return isOwner
        ? const OwnerOverviewContent()
        : const _RenterOverviewContent();
  }
}

class _RenterOverviewContent extends ConsumerWidget {
  const _RenterOverviewContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeProvider.notifier);

    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        OverviewActionGrid(
          children: [
            HomeActionCard(
              title: context.l10n.rentApartment,
              imagePath: AppIcons.rent,
              onTap: notifier.openApartments,
            ),
            HomeActionCard(
              title: context.l10n.myAdvertisements,
              imagePath: AppIcons.myRents,
              onTap: notifier.openMyAdvertisements,
            ),
            HomeActionCard(
              title: context.l10n.findNeighbour,
              imagePath: AppIcons.neighbors,
              onTap: notifier.openNeighbours,
            ),
            HomeActionCard(
              title: context.l10n.coworking,
              imagePath: AppIcons.coworking,
              onTap: notifier.openCoworking,
            ),
          ],
        ),
        RecentAdvertisementsSection(onSeeAll: notifier.openApartments),
      ],
    );
  }
}

class OverviewActionGrid extends StatelessWidget {
  const OverviewActionGrid({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: S.p16, top: S.p16, bottom: S.p24),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: S.p12,
        mainAxisSpacing: S.p12,
        childAspectRatio: 1.12,
        children: children,
      ),
    );
  }
}
