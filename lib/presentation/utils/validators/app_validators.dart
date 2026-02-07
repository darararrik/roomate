part 'email_validator.dart';
part 'password_validator.dart';
part 'phone_validator.dart';

abstract class AppValidators {
  static bool email(String? value) => _EmailValidator.isValid(value);

  static bool phone(String? value) => _PhoneValidator.isValid(value);

  static bool passwordLongEnough(String? value, {int minLength = 5}) =>
      _PasswordValidator.isLongEnough(value, minLength: minLength);

  static bool passwordMatch(String? value, String? otherValue) =>
      _PasswordValidator.isMatch(value, otherValue);
}
