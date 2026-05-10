import 'package:flutter/material.dart';

import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/chips/label_chip.dart';

class ChipMatch extends StatelessWidget {
  const ChipMatch({super.key, this.matchPercent = 95});

  final int matchPercent;

  @override
  Widget build(BuildContext context) {
    return LabelChip(
      title: "$matchPercent${context.l10n.percent} ${context.l10n.match}",
      backgroundColor: context.colors.lightGreen100,
      color: context.colors.green700,
    );
  }
}
