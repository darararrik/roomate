import 'package:flutter/material.dart';

//TODO: Заменить
String? validatorEmail(String? value, BuildContext context) {
  final email = value?.trim() ?? '';
  final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!emailRegex.hasMatch(email)) {
    return "Заменить"; //context.l10n.errorInvalidEmail
  }
  return null;
}
