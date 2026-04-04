part of 'app_validators.dart';

abstract class _PhoneValidator {
  static bool isValid(String? value) {
    if (value == null) return false;
    final digitsOnly = value.replaceAll(RegExp(r'\D'), '');
    return digitsOnly.length == 10;
  }
}
