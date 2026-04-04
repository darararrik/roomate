part of 'app_theme.dart';

final AppTypography _appTextStyle = AppTypography(
  headline0: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 21,
    fontWeight: FontWeight.w500,
    color: _appColors.graysBlack,
    height: 1,
  ),
  headline1: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: _appColors.graysBlack,
    height: 1,
  ),
  headline2: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 16 / 16,
  ),
  bodyTitle: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _appColors.graysBlack,
    height: 1,
  ),
  bodyDescription: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 1,
  ),
  bodySmall: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 1,
  ),
  inputRegular: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 1,
  ),
  activesCodeNumber: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: _appColors.graysBlack,
    height: 1,
  ),
  activesButton: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 1,
  ),
  activesLabel: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.graysBlack,
    height: 1,
  ),
);
