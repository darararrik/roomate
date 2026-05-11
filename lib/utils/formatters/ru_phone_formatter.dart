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

class RuPhoneWithPrefixFormatter extends TextInputFormatter {
  static const String prefix = '+7 ';

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // 1. Если пользователь пытается стереть префикс или часть его, возвращаем префикс
    if (!newValue.text.startsWith(prefix)) {
      return const TextEditingValue(
        text: prefix,
        selection: TextSelection.collapsed(offset: prefix.length),
      );
    }

    // 2. Извлекаем только вводимые цифры (отсекаем "+7 ")
    String digitsOnly = newValue.text
        .substring(prefix.length)
        .replaceAll(RegExp(r'\D'), '');

    // 3. Ограничиваем ввод 10 цифрами (без учета +7)
    if (digitsOnly.length > 10) {
      digitsOnly = digitsOnly.substring(0, 10);
    }

    // 4. Формируем маску (XXX) XXX-XX-XX
    String formatted = prefix;

    if (digitsOnly.isNotEmpty) {
      formatted +=
          '(${digitsOnly.substring(0, digitsOnly.length > 3 ? 3 : digitsOnly.length)}';
    }
    if (digitsOnly.length > 3) {
      formatted +=
          ') ${digitsOnly.substring(3, digitsOnly.length > 6 ? 6 : digitsOnly.length)}';
    }
    if (digitsOnly.length > 6) {
      formatted +=
          '-${digitsOnly.substring(6, digitsOnly.length > 8 ? 8 : digitsOnly.length)}';
    }
    if (digitsOnly.length > 8) {
      formatted += '-${digitsOnly.substring(8, digitsOnly.length)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
