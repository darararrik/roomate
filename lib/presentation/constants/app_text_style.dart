import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

final AppTypography appTextStyle = AppTypography(
  headline0: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 21,
    fontWeight: FontWeight.w500,
    color: appColors.black,
  ),
  headline1: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: appColors.black,
  ),
  headline2: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: appColors.black,
    height: 0.16,
  ),
  bodyTitle: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: appColors.black,
  ),
  bodyDescription: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: appColors.black,
  ),
  bodySmall: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: appColors.black,
  ),
  inputTextRegular: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: appColors.black,
  ),
  activesCodeNumber: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: appColors.black,
  ),
  activesButton: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: appColors.black,
  ),
  activesLabel: TextStyle(
    fontFamily: const String.fromEnvironment("FONT_FAMILY"),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: appColors.black,
  ),
);
