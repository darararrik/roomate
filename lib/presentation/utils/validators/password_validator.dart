import 'package:flutter/widgets.dart';

//TODO: Заменить

String? shortPasswordValidator(String? value, BuildContext context) {
  final pass = value?.trim() ?? '';
  if (pass.length < 5) {
    return "Заменить"; // return context.l10n.errorPasswordTooShort;
  }
  return null;
}

String? matchPasswordcValidator(
  String? value,
  BuildContext context,
  TextEditingController firstPasswordController,
) {
  if (value?.trim() != firstPasswordController.text.trim()) {
    return "Заменить"; //context.l10n.errorPasswordsDoNotMatch;
  }
  return null;
}
