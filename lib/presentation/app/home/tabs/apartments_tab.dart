import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/app/home/state/apartaments_notifier.dart';

@RoutePage()
class ApartamentsTab extends ConsumerWidget {
  const ApartamentsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apartaments = ref.watch(apartamentsProvider).apartaments;

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
                    leading: const AppIcon(
                      AppIcons.filter2,
                      width: S.p24,
                      height: S.p24,
                    ),
                    title: context.l10n.filters,
                    onTap: () => context.pushRoute(const FiltersWrapper()),
                  ),
                  FilterCard(
                    trailing: const AppIcon(
                      AppIcons.arrowDown,
                      width: S.p24,
                      height: S.p24,
                    ),
                    title: context.l10n.term,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const RentDurationBottomSheet(),
                    ),
                  ),
                  FilterCard(
                    trailing: const AppIcon(
                      AppIcons.arrowDown,
                      width: S.p24,
                      height: S.p24,
                    ),
                    title: context.l10n.district,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const DistrictBottomSheet(),
                    ),
                  ),
                ].separated(const SizedBox(width: S.p12)),
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
                  Text(
                    "${context.l10n.optionsFound} ${apartaments.length}",
                    style: context.typography.bodyTitle,
                  ),
                  GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SortBottomSheet(),
                    ),

                    //TODO: сменить виджет
                    child: const AppIcon(
                      AppIcons.sort,
                      width: S.p32,
                      height: S.p32,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList.separated(
          itemCount: apartaments.length,
          itemBuilder: (context, index) {
            final apartment = apartaments[index];

            return ApartmentCard(
              apartment: apartment,
              onTap: () =>
                  context.pushRoute(ApartamnetRoute(apartment: apartment)),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: S.p12);
          },
        ),
      ],
    );
  }
}
