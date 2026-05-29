import 'package:flutter/material.dart';

import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/chips/label_chip.dart';

class ChipMatch extends StatelessWidget {
  const ChipMatch({super.key, this.matchPercent = 95});

  final int matchPercent;

  @override
  Widget build(BuildContext context) {
    final colors = _resolveColors(context);

    return LabelChip(
      title: "$matchPercent${context.l10n.percent} ${context.l10n.match}",
      backgroundColor: colors.$1,
      color: colors.$2,
    );
  }

  (Color, Color) _resolveColors(BuildContext context) {
    if (matchPercent >= 75) {
      return (context.colors.lightGreen100, context.colors.labelGreen);
    }

    if (matchPercent >= 50) {
      return (context.colors.lightYellow100, context.colors.labelYellow);
    }

    return (context.colors.lightRed100, context.colors.labelRed);
  }
}
