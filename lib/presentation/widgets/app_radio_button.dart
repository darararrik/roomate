import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class AppRadioButton extends StatelessWidget {
  const AppRadioButton({super.key, required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: context.colors.orange100),
      ),
      child: Padding(
        padding: const P(all: S.p4),
        child: Visibility(
          visible: selected,
          replacement: const SizedBox(width: S.p10, height: S.p10),
          child: DecoratedBox(
            decoration: BoxDecoration(shape: BoxShape.circle, color: context.colors.orange100),
            child: const SizedBox(width: S.p10, height: S.p10),
          ),
        ),
      ),
    );
  }
}
