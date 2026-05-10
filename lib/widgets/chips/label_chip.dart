import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class LabelChip extends StatelessWidget {
  const LabelChip({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.color,
    this.iconPath,
  });

  final String title;
  final Color backgroundColor;
  final Color color;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(S.p8),
      ),
      child: Padding(
        padding: const P(all: S.p8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: S.p8,
          children: [
            if (iconPath != null)
              AppIcon(iconPath!, width: S.p16, height: S.p16, color: color),
            Text(
              title,
              style: context.typography.bodySmall.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
