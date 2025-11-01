import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[appColors, appTextStyle],
    scaffoldBackgroundColor: appColors.white,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: appColors.white,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),

      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.selected)) {
          return appTextStyle.bodySmall.copyWith(color: appColors.orange);
        }
        return appTextStyle.bodySmall.copyWith(color: appColors.black);
      }),
    ),
  );
}
