import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';

extension BuildContextX on BuildContext {
  AppPalette get colors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get typography => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension CurrencyX on Currency {
  String get symbol {
    switch (this) {
      case Currency.rub:
        return "₽";
      case Currency.usd:
        return "\$";
      case Currency.eur:
        return "€";
    }
  }
}

extension DateTimeX on DateTime {
  String toFormattedString() {
    return DateFormat('dd.MM.yyyy').format(this);
  }

  String toNormalTimeString() {
    return DateFormat.Hm().format(this);
  }
}

extension IntX on int {
  String toMessagedCount() {
    if (this <= 0) {
      return '';
    } else if (this < 100) {
      return toString();
    } else if (this < 1000) {
      return toString();
    } else if (this < 10000) {
      double kValue = this / 1000.0;
      return '${kValue.toStringAsFixed(1)}k';
    } else {
      int kValue = (this / 1000).floor();
      return '${kValue}k';
    }
  }
}

extension ListX on List<Widget> {
  List<Widget> separated(Widget separator) {
    if (isEmpty) return [];
    final List<Widget> result = [];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) {
        result.add(separator);
      }
    }
    return result;
  }
}

extension RefX on Ref {
  NavigationService get nav => read(navigationServiceProvider);
  AppLocalizations get l10n => read(l10nProvider);
}
