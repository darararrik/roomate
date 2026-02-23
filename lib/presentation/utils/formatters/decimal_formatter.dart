import 'package:flutter/services.dart';

class DecimalFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;

    String newText = newValue.text.replaceAll(',', '.');

    final regExp = RegExp(r'^[0-9]*[.,]?[0-9]*$');

    if (regExp.hasMatch(newText)) {
      return newValue.copyWith(
        text: newText,
        selection: newValue.selection.copyWith(
          baseOffset: newValue.selection.baseOffset,
          extentOffset: newValue.selection.extentOffset,
        ),
      );
    }

    return oldValue;
  }
}
