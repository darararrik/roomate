import 'package:flutter/services.dart';

/// Маска для РФ: (XXX) XXX-XX-XX
class RuPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;
    if (text.length > 10) return oldValue;

    var newText = '';
    if (text.isNotEmpty) {
      newText += '(${text.substring(0, text.length > 3 ? 3 : text.length)}';
    }
    if (text.length > 3) {
      newText += ') ${text.substring(3, text.length > 6 ? 6 : text.length)}';
    }
    if (text.length > 6) {
      newText += '-${text.substring(6, text.length > 8 ? 8 : text.length)}';
    }
    if (text.length > 8) {
      newText += '-${text.substring(8, text.length)}';
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
