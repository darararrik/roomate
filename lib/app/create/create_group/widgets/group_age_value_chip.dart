import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupAgeValueChip extends StatelessWidget {
  const GroupAgeValueChip({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p8),
      ),
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p8),
        child: Text(
          '$value',
          style: context.typography.activesLabel.copyWith(color: context.colors.graysText400),
        ),
      ),
    );
  }
}
