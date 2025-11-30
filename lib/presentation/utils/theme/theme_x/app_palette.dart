// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/material.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.white,
    required this.light100,
    required this.input200,
    required this.message,
    required this.stroke300,
    required this.text400,
    required this.text700,
    required this.icon500,
    required this.black,
    required this.white10,
    required this.red15,
    required this.orange40,
    required this.orange60,
    required this.red,
    required this.orange,
    required this.orange100,
    required this.shadow,
    required this.green100,
    required this.green700,
    required this.yellow100,
    required this.yellow700,
    required this.red100,
    required this.red700,
    required this.fillsSecondary,
    required this.orange20,
  });

  final Color white;
  final Color light100;
  final Color input200;
  final Color message;
  final Color stroke300;
  final Color text400;
  final Color text700;
  final Color icon500;
  final Color black;
  final Color white10;
  final Color red15;
  final Color orange40;
  final Color orange60;
  final Color red;
  final Color orange;
  final Color orange100;
  final BoxShadow shadow;
  final Color green100;
  final Color green700;
  final Color yellow100;
  final Color yellow700;
  final Color red100;
  final Color red700;
  final Color fillsSecondary;
  final Color orange20;
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
  }) {
    return AppPalette(
      white: white ?? this.white,
      light100: light100 ?? this.light100,
      input200: input200 ?? this.input200,
      message: message ?? this.message,
      stroke300: stroke300 ?? this.stroke300,
      text400: text400 ?? this.text400,
      text700: text700 ?? this.text700,
      icon500: icon500 ?? this.icon500,
      black: black ?? this.black,
      white10: white10 ?? this.white10,
      red15: red15 ?? this.red15,
      orange40: orange40 ?? this.orange40,
      orange60: orange60 ?? this.orange60,
      red: red ?? this.red,
      orange: orange ?? this.orange,
      orange100: orange100 ?? this.orange100,
      shadow: shadow ?? this.shadow,
      green100: green100 ?? this.green100,
      green700: green700 ?? this.green700,
      yellow100: yellow100 ?? this.yellow100,
      yellow700: yellow700 ?? this.yellow700,
      red100: red100 ?? this.red100,
      red700: red700 ?? this.red700,
      fillsSecondary: fillsSecondary ?? this.fillsSecondary,
      orange20: orange20 ?? this.orange20,
    );
  }

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) return this;
    return AppPalette(
      white: Color.lerp(white, other.white, t)!,
      light100: Color.lerp(light100, other.light100, t)!,
      input200: Color.lerp(input200, other.input200, t)!,
      message: Color.lerp(message, other.message, t)!,
      stroke300: Color.lerp(stroke300, other.stroke300, t)!,
      text400: Color.lerp(text400, other.text400, t)!,
      text700: Color.lerp(text700, other.text700, t)!,
      icon500: Color.lerp(icon500, other.icon500, t)!,
      black: Color.lerp(black, other.black, t)!,
      white10: Color.lerp(white10, other.white10, t)!,
      red15: Color.lerp(red15, other.red15, t)!,
      orange40: Color.lerp(orange40, other.orange40, t)!,
      orange60: Color.lerp(orange60, other.orange60, t)!,
      red: Color.lerp(red, other.red, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      orange100: Color.lerp(orange100, other.orange100, t)!,
      shadow: BoxShadow.lerp(shadow, other.shadow, t)!,
      green100: Color.lerp(green100, other.orange, t)!,
      green700: Color.lerp(green700, other.orange100, t)!,
      yellow100: Color.lerp(yellow100, other.orange, t)!,
      yellow700: Color.lerp(yellow700, other.orange100, t)!,
      red100: Color.lerp(red100, other.orange, t)!,
      red700: Color.lerp(red700, other.orange100, t)!,
      fillsSecondary: Color.lerp(fillsSecondary, other.fillsSecondary, t)!,
      orange20: Color.lerp(orange20, other.orange20, t)!,
    );
  }
}
