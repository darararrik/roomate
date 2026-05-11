import 'package:flutter/material.dart';

import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

class MainAppBar extends ConsumerWidget {
  const MainAppBar({
    super.key,
    this.pinned = false,
    this.floating = true,
    this.snap = true,
    this.bottom,
    this.cityTitle,
    this.selectedCityFiasId,
    this.onCitySelected,
  });

  final bool pinned;
  final bool floating;
  final bool snap;
  final PreferredSizeWidget? bottom;
  final String? cityTitle;
  final String? selectedCityFiasId;
  final Future<void> Function(CityModel city)? onCitySelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentCity = ref.watch(currentProfileCityProvider);
    final effectiveCityTitle = cityTitle?.trim().isNotEmpty == true
        ? cityTitle!
        : currentCity?.title.isNotEmpty == true
        ? currentCity!.title
        : context.l10n.selectRegion;

    return SliverAppBar(
      pinned: pinned,
      floating: floating,
      snap: snap,
      centerTitle: true,
      bottom: bottom,
      title: GestureDetector(
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => RegionBottomSheet(
            selectedCityFiasId: selectedCityFiasId,
            onCitySelected: onCitySelected,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.l10n.searchRegion,
              style: context.typography.headline2,
            ),
            const SizedBox(height: S.p4),
            Text(effectiveCityTitle, style: context.typography.headline1),
          ],
        ),
      ),
    );
  }
}
