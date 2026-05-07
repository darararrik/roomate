import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class RegionListItem extends StatelessWidget {
  const RegionListItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.iconPath,
  });
  final VoidCallback onTap;
  final String title;
  final String subTitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    final hasSubTitle = subTitle.trim().isNotEmpty;
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const P(all: S.p12),
              child: AppIcon(iconPath),
            ),
            Expanded(
              child: Padding(
                padding: const P(left: S.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: context.typography.bodyDescription.copyWith(height: 17 / 14),
                    ),
                    if (hasSubTitle) ...[
                      const SizedBox(height: S.p8),
                      Text(
                        subTitle,
                        style: context.typography.bodyDescription.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(width: S.p12),
            AppIcon(
              AppIcons.arrowRight,
              color: context.colors.graysIcon500,
              width: S.p32,
              height: S.p32,
            ),
          ],
        ),
      ),
    );
  }
}
