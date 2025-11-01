import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[appColors, appTextStyle],

  );
}
