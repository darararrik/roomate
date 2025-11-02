import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class ChipMatch extends StatelessWidget {
  const ChipMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.appColors.green100, borderRadius: BorderRadius.circular(S.p6)),
      child: Padding(
        padding: const P(all: S.p8),
        child: Text(
          "${95}${context.l10n.percent} ${context.l10n.match}",
          style: context.appTextStyle.bodySmall.copyWith(color: context.appColors.green700),
        ),
      ),
    );
  }
}
