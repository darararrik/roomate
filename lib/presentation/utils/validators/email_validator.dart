part of 'app_validators.dart';

abstract class _EmailValidator {
  static bool isValid(String? value) {
    if (value == null) return false;
    final email = value.trim();
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(email);
  }
}
