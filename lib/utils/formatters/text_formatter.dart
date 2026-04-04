import 'package:flutter/services.dart';

class StandartTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return FilteringTextInputFormatter.allow(
      RegExp(r'[а-яА-Я]'),
    ).formatEditUpdate(oldValue, newValue);
  }
}
