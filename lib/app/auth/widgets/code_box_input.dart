import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';

class CodeBoxInput extends StatelessWidget {
  const CodeBoxInput({super.key, required this.cells});
  final List<PinCellData> cells;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: cells.map((cell) {
        return Container(
          width: S.p56,
          height: S.p56,
          margin: const EdgeInsets.symmetric(horizontal: S.p8),
          decoration: BoxDecoration(
            borderRadius: .circular(S.p12),
            color: Colors.transparent,
            border: Border.all(
              color: cell.isError
                  ? context.colors.red
                  : cell.isFocused
                  ? context.colors.orange
                  : context.colors.graysStroke300,
            ),
          ),
          child: Center(
            child: Text(
              cell.character ?? '',
              style: context.typography.headline0,
            ),
          ),
        );
      }).toList(),
    );
  }
}
