import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class FiltersRow extends StatelessWidget implements PreferredSizeWidget {
  const FiltersRow({
    super.key,
    required this.optionsCount,
    required this.onFiltersTap,
  });

  final int optionsCount;
  final VoidCallback onFiltersTap;

  static double preferredHeight() => S.p100;

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: S.p40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const P(horizontal: S.p24),
            children: [
              FilterCard(
                leading: const AppIcon(
                  AppIcons.filter2,
                  width: S.p24,
                  height: S.p24,
                ),
                title: context.l10n.filters,
                onTap: onFiltersTap,
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
        const SizedBox(height: S.p12),
        Padding(
          padding: const P(horizontal: S.p24, top: S.p4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${context.l10n.optionsFound} $optionsCount",
                style: context.typography.bodyTitle,
              ),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const SortBottomSheet(),
                ),
                child: const AppIcon(
                  AppIcons.sort,
                  width: S.p32,
                  height: S.p32,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
