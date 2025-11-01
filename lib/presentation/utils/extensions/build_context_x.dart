import 'package:flutter/material.dart';

import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/utils/theme/theme.dart';

extension BuildContextX on BuildContext {
  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get appTextStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
