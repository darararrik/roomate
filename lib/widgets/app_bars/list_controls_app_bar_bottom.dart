import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class ListControlsAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const ListControlsAppBarBottom({
    super.key,
    required this.optionsCount,
    required this.onFiltersTap,
  });

  final int optionsCount;
  final VoidCallback onFiltersTap;

  @override
  Size get preferredSize => const Size.fromHeight(S.p128);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: S.p64,
            child: Padding(
              padding: const P(top: S.p8, left: S.p16, right: S.p16),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const P(vertical: S.p8, horizontal: S.p8),
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
          ),
          SizedBox(
            height: S.p64,
            child: Padding(
              padding: const P(left: S.p24, right: S.p24, bottom: S.p8),
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
          ),
        ],
      ),
    );
  }
}
