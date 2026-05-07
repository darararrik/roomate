import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/config/config.dart';
import 'package:roomate/lib.dart';

part 'app_providers.g.dart';

// App-level providers:
// Keep configuration, localization, environment flags, and other app bootstrap
// dependencies here.

@Riverpod(keepAlive: true)
AppConfig config(Ref ref) {
  return AppConfig.current(useMocks: kUseMocks);
}

@riverpod
AppLocalizations l10n(Ref ref) {
  return lookupAppLocalizations(
    WidgetsBinding.instance.platformDispatcher.locale,
  );
}
