import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/theme/theme_x/app_palette.dart';
import 'package:roomate/presentation/theme/theme_x/app_typography.dart';
import 'package:roomate/presentation/utils/p.dart';

part 'app_text_style.dart';
part 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateColor.fromMap({
          WidgetState.pressed: _appColors.light100,
        }),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: _appColors.white),

    // chipTheme: ChipThemeData(
    //   backgroundColor: _appColors.light100,
    //   disabledColor: _appColors.stroke300,
    //   padding: const P(horizontal: S.p12, vertical: S.p8),
    //   labelStyle: _appTextStyle.activesLabel,
    //   brightness: Brightness.light,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(S.p12),
    //     side: BorderSide(color: _appColors.input200),
    //   ),
    // ),
    primaryColor: _appColors.orange,
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[_appColors, _appTextStyle],
    scaffoldBackgroundColor: _appColors.white,
    dividerColor: _appColors.stroke300,
    dividerTheme: DividerThemeData(
      thickness: S.p1,
      space: S.p1,
      color: _appColors.stroke300,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: _appColors.white),
    appBarTheme: AppBarTheme(
      surfaceTintColor: _appColors.white,
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
      indicator: BoxDecoration(
        color: _appColors.light100,
        borderRadius: BorderRadius.circular(S.p20),
      ),
      splashBorderRadius: BorderRadius.circular(S.p20),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const P(horizontal: S.p16, vertical: S.p14),
      hintStyle: _appTextStyle.inputTextRegular.copyWith(
        color: _appColors.text400,
      ),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: BorderSide(color: _appColors.stroke300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: BorderSide(color: _appColors.orange),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: const BorderSide(width: S.p2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: const BorderSide(width: S.p2),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(S.p32),
          ),
        ),
        textStyle: WidgetStatePropertyAll(_appTextStyle.activesButton),
        minimumSize: const WidgetStatePropertyAll(Size.fromHeight(S.p48)),
        elevation: const WidgetStatePropertyAll(0),
        foregroundColor: WidgetStateColor.fromMap({
          WidgetState.any: _appColors.white,
          WidgetState.disabled: _appColors.white,
        }),
        backgroundColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: _appColors.orange60,
          WidgetState.any: _appColors.orange,
        }),
      ),
    ),
  );
}
