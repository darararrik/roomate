import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class GroupCountChip extends StatelessWidget {
  const GroupCountChip({
    super.key,
    required this.currentCount,
    required this.maxCount,
  });

  final int currentCount;
  final int maxCount;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysWhite,
        borderRadius: BorderRadius.circular(S.p20),
        border: Border.all(color: context.colors.graysStroke300),
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p10),
        child: Text(
          '$currentCount/$maxCount',
          style: context.typography.headline2.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ),
    );
  }
}
