import 'package:flutter/services.dart';

class StandartTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return FilteringTextInputFormatter.allow(
      RegExp(r'[a-zA-Z]'),
    ).formatEditUpdate(oldValue, newValue);
  }
}
