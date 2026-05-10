import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class FeatureChip extends StatelessWidget {
  const FeatureChip({super.key, required this.title, required this.iconPath});

  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppIcon(
          iconPath,
          width: S.p20,
          height: S.p20,
          color: context.colors.graysIcon500,
        ),
        const SizedBox(width: S.p8),
        Expanded(child: Text(title, style: context.typography.bodyDescription)),
      ],
    );
  }
}
