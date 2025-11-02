part of 'app_theme.dart';

final AppTypography _appTextStyle = AppTypography(
  headline0: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 21,
    fontWeight: FontWeight.w500,
    color: _appColors.black,
  ),
  headline1: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: _appColors.black,
  ),
  headline2: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
    height: 0.16,
  ),
  bodyTitle: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _appColors.black,
  ),
  bodyDescription: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
  ),
  bodySmall: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
  ),
  inputTextRegular: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
  ),
  activesCodeNumber: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: _appColors.black,
  ),
  activesButton: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
  ),
  activesLabel: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _appColors.black,
  ),
);
