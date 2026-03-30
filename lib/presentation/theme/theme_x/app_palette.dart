import 'package:flutter/material.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.graysWhite,
    required this.graysLight100,
    required this.graysInput200,
    required this.graysMessage,
    required this.graysStroke300,
    required this.graysText400,
    required this.graysText700,
    required this.graysIcon500,
    required this.graysBlack,
    required this.opacityWhite10,
    required this.opacityRed15,
    required this.opacityOrange40,
    required this.opacityOrange60,
    required this.red,
    required this.orange,
    required this.lightOrange100,
    required this.shadow,
    required this.lightGreen100,
    required this.green700,
    required this.lightYellow100,
    required this.yellow700,
    required this.lightRed100,
    required this.red700,
    required this.fillsSecondary,
    required this.opacityOrange20,
    required this.bottomNavBarShadow,
    required this.grayMessage,
    required this.orangeChat,
    required this.opacityWhite60,
    required this.opacityBlack60,
    required this.lightGray100,
    required this.redSecond,
    required this.orangeSecond,
    required this.labelRed,
    required this.labelYellow,
    required this.labelGreen,
    required this.labelBlue,
    required this.lightBlue100,
    required this.graysLight50,
  });
  // Grays Colors
  final Color graysWhite;
  final Color graysLight50;
  final Color graysLight100;
  final Color graysInput200;
  final Color graysMessage;
  final Color graysStroke300;
  final Color graysText400;
  final Color graysText700;
  final Color graysIcon500;
  final Color graysBlack;
  // Opacity Colors
  final Color opacityWhite10;
  final Color opacityRed15;
  final Color opacityOrange20;
  final Color opacityOrange40;
  final Color opacityOrange60;
  final Color opacityWhite60;
  final Color opacityBlack60;
  // Lights Colors
  final Color lightOrange100;
  final Color lightGreen100;
  final Color lightYellow100;
  final Color lightRed100;
  final Color lightGray100;
  final Color lightBlue100;

  // Main Colors
  final Color red;
  final Color redSecond;
  final Color orange;
  final Color orangeSecond;

  // Labels Color
  final Color labelRed;
  final Color labelYellow;
  final Color labelGreen;
  final Color labelBlue;

  // Other Colors
  // TODO: разобраться с цветами они лишние !
  final Color green700;
  final Color yellow700;
  final Color red700;
  final Color fillsSecondary;
  final Color grayMessage;
  final Color orangeChat;

  //Shadows
  final BoxShadow bottomNavBarShadow;
  final BoxShadow shadow;

  @override
  AppPalette copyWith({
    Color? white,
    Color? light100,
    Color? input200,
    Color? message,
    Color? stroke300,
    Color? text400,
    Color? text700,
    Color? icon500,
    Color? black,
    Color? white10,
    Color? red15,
    Color? orange40,
    Color? orange60,
    Color? red,
    Color? orange,
    Color? orange100,
    Color? green100,
    Color? green700,
    Color? yellow100,
    Color? yellow700,
    Color? red100,
    Color? red700,
    BoxShadow? shadow,
    Color? fillsSecondary,
    Color? orange20,
    BoxShadow? bottomNavBarShadow,
    Color? grayMessage,
    Color? orangeChat,
    Color? opacityWhite60,
    Color? opacityBlack60,
    Color? lightGray100,
    Color? lightRed100_2,
    Color? orangeSecond,
    Color? labelRed,
    Color? labelYellow,
    Color? labelGreen,
    Color? labelBlue,
    Color? lightBlue100,
    Color? graysLight50,
  }) {
    return AppPalette(
      graysWhite: white ?? graysWhite,
      graysLight100: light100 ?? graysLight100,
      graysInput200: input200 ?? graysInput200,
      graysMessage: message ?? graysMessage,
      graysStroke300: stroke300 ?? graysStroke300,
      graysText400: text400 ?? graysText400,
      graysText700: text700 ?? graysText700,
      graysIcon500: icon500 ?? graysIcon500,
      graysBlack: black ?? graysBlack,
      opacityWhite10: white10 ?? opacityWhite10,
      opacityRed15: red15 ?? opacityRed15,
      opacityOrange40: orange40 ?? opacityOrange40,
      opacityOrange60: orange60 ?? opacityOrange60,
      red: red ?? this.red,
      orange: orange ?? this.orange,
      lightOrange100: orange100 ?? lightOrange100,
      shadow: shadow ?? this.shadow,
      lightGreen100: green100 ?? lightGreen100,
      green700: green700 ?? this.green700,
      lightYellow100: yellow100 ?? lightYellow100,
      yellow700: yellow700 ?? this.yellow700,
      lightRed100: red100 ?? lightRed100,
      red700: red700 ?? this.red700,
      fillsSecondary: fillsSecondary ?? this.fillsSecondary,
      opacityOrange20: orange20 ?? opacityOrange20,
      bottomNavBarShadow: bottomNavBarShadow ?? this.bottomNavBarShadow,
      grayMessage: grayMessage ?? this.grayMessage,
      orangeChat: orangeChat ?? this.orangeChat,
      opacityWhite60: opacityWhite60 ?? this.opacityWhite60,
      opacityBlack60: opacityBlack60 ?? this.opacityBlack60,
      lightGray100: lightGray100 ?? this.lightGray100,
      redSecond: lightRed100_2 ?? redSecond,
      orangeSecond: orangeSecond ?? this.orangeSecond,
      labelRed: labelRed ?? this.labelRed,
      labelYellow: labelYellow ?? this.labelYellow,
      labelGreen: labelGreen ?? this.labelGreen,
      labelBlue: labelBlue ?? this.labelBlue,
      lightBlue100: lightBlue100 ?? this.lightBlue100,
      graysLight50: graysLight50 ?? this.graysLight50,
    );
  }

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) return this;
    return AppPalette(
      graysWhite: Color.lerp(graysWhite, other.graysWhite, t)!,
      graysLight100: Color.lerp(graysLight100, other.graysLight100, t)!,
      graysInput200: Color.lerp(graysInput200, other.graysInput200, t)!,
      graysMessage: Color.lerp(graysMessage, other.graysMessage, t)!,
      graysStroke300: Color.lerp(graysStroke300, other.graysStroke300, t)!,
      graysText400: Color.lerp(graysText400, other.graysText400, t)!,
      graysText700: Color.lerp(graysText700, other.graysText700, t)!,
      graysIcon500: Color.lerp(graysIcon500, other.graysIcon500, t)!,
      graysBlack: Color.lerp(graysBlack, other.graysBlack, t)!,
      opacityWhite10: Color.lerp(opacityWhite10, other.opacityWhite10, t)!,
      opacityRed15: Color.lerp(opacityRed15, other.opacityRed15, t)!,
      opacityOrange40: Color.lerp(opacityOrange40, other.opacityOrange40, t)!,
      opacityOrange60: Color.lerp(opacityOrange60, other.opacityOrange60, t)!,
      red: Color.lerp(red, other.red, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      lightOrange100: Color.lerp(lightOrange100, other.lightOrange100, t)!,
      shadow: BoxShadow.lerp(shadow, other.shadow, t)!,
      lightGreen100: Color.lerp(lightGreen100, other.orange, t)!,
      green700: Color.lerp(green700, other.lightOrange100, t)!,
      lightYellow100: Color.lerp(lightYellow100, other.orange, t)!,
      yellow700: Color.lerp(yellow700, other.lightOrange100, t)!,
      lightRed100: Color.lerp(lightRed100, other.orange, t)!,
      red700: Color.lerp(red700, other.lightOrange100, t)!,
      fillsSecondary: Color.lerp(fillsSecondary, other.fillsSecondary, t)!,
      opacityOrange20: Color.lerp(opacityOrange20, other.opacityOrange20, t)!,
      bottomNavBarShadow: BoxShadow.lerp(bottomNavBarShadow, other.bottomNavBarShadow, t)!,
      grayMessage: Color.lerp(grayMessage, other.orange, t)!,
      orangeChat: Color.lerp(orangeChat, other.lightOrange100, t)!,
      opacityWhite60: Color.lerp(opacityWhite60, other.opacityWhite60, t)!,
      opacityBlack60: Color.lerp(opacityBlack60, other.opacityBlack60, t)!,
      lightGray100: Color.lerp(lightGray100, other.lightGray100, t)!,
      redSecond: Color.lerp(redSecond, other.redSecond, t)!,
      orangeSecond: Color.lerp(orangeSecond, other.orangeSecond, t)!,
      labelRed: Color.lerp(labelRed, other.labelRed, t)!,
      labelYellow: Color.lerp(labelYellow, other.labelYellow, t)!,
      labelGreen: Color.lerp(labelGreen, other.labelGreen, t)!,
      labelBlue: Color.lerp(labelBlue, other.labelBlue, t)!,
      lightBlue100: Color.lerp(lightBlue100, other.lightBlue100, t)!,
      graysLight50: Color.lerp(graysLight50, other.graysLight50, t)!,
    );
  }
}
