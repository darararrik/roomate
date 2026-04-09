import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/theme/theme_x/app_palette.dart';
import 'package:roomate/theme/theme_x/app_typography.dart';
import 'package:roomate/utils/helpers/p.dart';

part 'app_colors.dart';
part 'app_text_style.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateColor.fromMap({WidgetState.pressed: _appColors.graysLight100}),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: _appColors.graysWhite),

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
    scaffoldBackgroundColor: _appColors.graysWhite,
    dividerColor: _appColors.graysStroke300,
    dividerTheme: DividerThemeData(thickness: S.p1, space: S.p1, color: _appColors.graysStroke300),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: _appColors.graysWhite),
    appBarTheme: AppBarTheme(
      surfaceTintColor: _appColors.graysWhite,
      backgroundColor: _appColors.graysWhite,
      foregroundColor: _appColors.graysBlack,
      elevation: 0,
      titleTextStyle: _appTextStyle.headline1,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: _appColors.graysWhite,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),

      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.selected)) {
          return _appTextStyle.bodySmall.copyWith(color: _appColors.orange);
        }
        return _appTextStyle.bodySmall.copyWith(color: _appColors.graysBlack);
      }),
    ),
    tabBarTheme: TabBarThemeData(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      indicatorSize: TabBarIndicatorSize.tab,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      labelColor: _appColors.graysBlack,
      unselectedLabelColor: _appColors.graysBlack,
      labelStyle: _appTextStyle.inputRegular,
      unselectedLabelStyle: _appTextStyle.inputRegular,
      indicator: BoxDecoration(
        color: _appColors.graysLight100,
        borderRadius: BorderRadius.circular(S.p20),
      ),
      splashBorderRadius: BorderRadius.circular(S.p20),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const P(horizontal: S.p16, vertical: S.p20),
      fillColor: _appColors.graysInput200,
      hintStyle: _appTextStyle.inputRegular.copyWith(color: _appColors.graysText400),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(S.p16),
        borderSide: BorderSide(color: _appColors.graysStroke300),
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
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(S.p16)),
        ),
        textStyle: WidgetStatePropertyAll(_appTextStyle.activesButton),
        minimumSize: const WidgetStatePropertyAll(Size.fromHeight(S.p48)),
        elevation: const WidgetStatePropertyAll(0),
        foregroundColor: WidgetStateColor.fromMap({
          WidgetState.any: _appColors.graysWhite,
          WidgetState.disabled: _appColors.graysWhite,
        }),
        backgroundColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: _appColors.opacityOrange60,
          WidgetState.any: _appColors.orange,
        }),
      ),
    ),
  );
}
