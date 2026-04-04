import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/l10n/app_localizations.dart'; // путь к твоему классу

part 'l10n_provider.g.dart';

@riverpod
AppLocalizations l10n(Ref ref) {
  // Этот провайдер будет автоматически обновляться при смене локали приложения
  // если ты используешь стандартный механизм Flutter
  return lookupAppLocalizations(
    WidgetsBinding.instance.platformDispatcher.locale,
  );
}
