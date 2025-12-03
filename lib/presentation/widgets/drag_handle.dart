import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p10),
      child: SizedBox(
        width: S.p44,
        height: S.p4,
        child: DecoratedBox(
          decoration: BoxDecoration(color: context.colors.stroke300, borderRadius: BorderRadius.circular(S.p100)),
        ),
      ),
    );
  }
}
