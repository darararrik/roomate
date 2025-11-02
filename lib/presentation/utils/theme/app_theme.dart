import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/theme/theme_x/app_palette.dart';
import 'package:roomate/presentation/utils/theme/theme_x/app_typography.dart';
part 'app_text_style.dart';
part 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: _appColors.orange,
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[_appColors, _appTextStyle],
    scaffoldBackgroundColor: _appColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: _appColors.white,
      foregroundColor: _appColors.black,
      elevation: 0,
      titleTextStyle: _appTextStyle.headline1,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: _appColors.white,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),

      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.selected)) {
          return _appTextStyle.bodySmall.copyWith(color: _appColors.orange);
        }
        return _appTextStyle.bodySmall.copyWith(color: _appColors.black);
      }),
    ),
    tabBarTheme: TabBarThemeData(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      indicatorSize: TabBarIndicatorSize.tab,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      labelColor: _appColors.black,
      unselectedLabelColor: _appColors.black,
      labelStyle: _appTextStyle.inputTextRegular,
      unselectedLabelStyle: _appTextStyle.inputTextRegular,
      indicator: BoxDecoration(color: _appColors.light100, borderRadius: BorderRadius.circular(S.p20)),
      splashBorderRadius: BorderRadius.circular(S.p20),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(S.p16))),
        textStyle: WidgetStatePropertyAll(_appTextStyle.activesButton),
        minimumSize: const WidgetStatePropertyAll(Size.fromHeight(S.p48)),
        elevation: const WidgetStatePropertyAll(0),
        foregroundColor: WidgetStateColor.fromMap({
          WidgetState.any: _appColors.white,
          WidgetState.disabled: _appColors.white,
        }),
        backgroundColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: _appColors.orange60,
          WidgetState.any: _appColors.orange, // fallback (рекомендуется)
        }),
      ),
    ),
  );
}
