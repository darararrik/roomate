import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.pinned = false,
    this.floating = true,
    this.snap = true,
    this.bottom,
  });

  final bool pinned;
  final bool floating;
  final bool snap;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
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
          builder: (context) => const RegionBottomSheet(),
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
            Text('Омская область', style: context.typography.headline1),
          ],
        ),
      ),
    );
  }
}
