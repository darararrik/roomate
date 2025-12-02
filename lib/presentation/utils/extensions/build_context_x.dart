import 'package:flutter/material.dart';

import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/theme/theme.dart';

extension BuildContextX on BuildContext {
  AppPalette get colors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get textStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
