import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.isSelected,
    required this.value,
    required this.isRadio,
  });

  final bool isSelected;
  final bool isRadio;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(S.p12),
        color: context.colors.graysWhite,
        border: Border.all(
          color: isSelected
              ? context.colors.lightOrange100
              : context.colors.graysStroke300,
        ),
      ),

      child: Padding(
        padding: const P(vertical: S.p12, left: S.p32, right: S.p16),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const P(vertical: S.p12),
                child: Text(value, style: context.typography.bodyDescription),
              ),
            ),
            SelectionButton(isSelected: isSelected, isRadio: isRadio),
          ],
        ),
      ),
    );
  }
}
