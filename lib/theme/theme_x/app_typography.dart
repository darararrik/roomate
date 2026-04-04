import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.headline0,
    required this.headline1,
    required this.headline2,
    required this.bodyTitle,
    required this.bodyDescription,
    required this.bodySmall,
    required this.inputRegular,
    required this.activesCodeNumber,
    required this.activesButton,
    required this.activesLabel,
  });

  final TextStyle headline0;
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle bodyTitle;
  final TextStyle bodyDescription;
  final TextStyle bodySmall;
  final TextStyle inputRegular;
  final TextStyle activesCodeNumber;
  final TextStyle activesButton;
  final TextStyle activesLabel;

  @override
  AppTypography copyWith({
    TextStyle? headline0,
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? bodyTitle,
    TextStyle? bodyDescription,
    TextStyle? bodySmall,
    TextStyle? inputTextRegular,
    TextStyle? activesCodeNumber,
    TextStyle? activesButton,
    TextStyle? activesLabel,
  }) {
    return AppTypography(
      headline0: headline0 ?? this.headline0,
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      bodyTitle: bodyTitle ?? this.bodyTitle,
      bodyDescription: bodyDescription ?? this.bodyDescription,
      bodySmall: bodySmall ?? this.bodySmall,
      inputRegular: inputTextRegular ?? this.inputRegular,
      activesCodeNumber: activesCodeNumber ?? this.activesCodeNumber,
      activesButton: activesButton ?? this.activesButton,
      activesLabel: activesLabel ?? this.activesLabel,
    );
  }

  @override
  AppTypography lerp(ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) return this;
    return AppTypography(
      headline0: TextStyle.lerp(headline0, other.headline0, t)!,
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other.headline2, t)!,
      bodyTitle: TextStyle.lerp(bodyTitle, other.bodyTitle, t)!,
      bodyDescription: TextStyle.lerp(bodyDescription, other.bodyDescription, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      inputRegular: TextStyle.lerp(inputRegular, other.inputRegular, t)!,
      activesCodeNumber: TextStyle.lerp(activesCodeNumber, other.activesCodeNumber, t)!,
      activesButton: TextStyle.lerp(activesButton, other.activesButton, t)!,
      activesLabel: TextStyle.lerp(activesLabel, other.activesLabel, t)!,
    );
  }
}
