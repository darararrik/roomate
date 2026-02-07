import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/sheets/district_bottom_sheet.dart';
import 'package:roomate/presentation/widgets/sheets/rent_duration_bottom_sheet.dart';
import 'package:roomate/presentation/widgets/sheets/sort_bottom_sheet.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

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
                    leading: const AppIcon(AppIcons.filter2, size: S.p24),
                    title: context.l10n.filters,
                    onTap: () => context.pushRoute(const FiltersWrapper()),
                  ),
                  //TODO: INFO: showModalBottomSheet умеет сам просчитывать дочерние размеры и можно не использовать DraggableScrollableSheet,  ГЛАВНОЕ: использовать isScrollControlled: true (ну он по умолчанию true)
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, size: S.p24),
                    title: context.l10n.term,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const RentDurationBottomSheet(),
                    ),
                  ),
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, size: S.p24),
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
        SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ApartmentCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: S.p12);
          },
        ),
      ],
    );
  }
}
