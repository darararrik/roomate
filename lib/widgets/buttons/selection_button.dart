import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({
    super.key,
    required this.isSelected,
    this.isRadio = false,
  });
  final bool isSelected;
  final bool isRadio;
  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return isRadio
        ? DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? colors.lightOrange100
                    : colors.graysStroke300,
              ),
            ),
            child: Padding(
              padding: const P(all: S.p4),
              child: Visibility(
                visible: isSelected,
                replacement: const SizedBox(width: S.p10, height: S.p10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors.lightOrange100,
                  ),
                  child: const SizedBox(width: S.p10, height: S.p10),
                ),
              ),
            ),
          )
        : Visibility(
            visible: isSelected,
            replacement: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(S.p4),
                border: Border.all(color: context.colors.graysStroke300),
              ),
              child: const SizedBox(width: S.p20, height: S.p20),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.lightOrange100,
                borderRadius: BorderRadius.circular(S.p4),
                border: Border.all(color: context.colors.lightOrange100),
              ),
              child: Center(
                child: Icon(
                  Icons.check_rounded,
                  color: context.colors.graysWhite,
                  size: S.p20,
                ),
              ),
            ),
          );
  }
}
