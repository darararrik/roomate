part of 'app_validators.dart';

abstract class _PasswordValidator {
  static bool isLongEnough(String? value, {int minLength = 5}) {
    if (value == null) return false;
    return value.trim().length >= minLength;
  }

  static bool isMatch(String? value, String? otherValue) {
    if (value == null || otherValue == null) return false;
    return value.trim() == otherValue.trim();
  }
}
