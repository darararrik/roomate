import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.titleText,
    this.onPressed,
    this.style,
    this.backgroundColor,
    this.borderRadius,
  });

  factory PrimaryButton.filled({
    required Text titleText,
    required VoidCallback onPressed,
    required Color color,
    double? borderRadius,
  }) {
    return PrimaryButton(
      titleText: titleText,
      onPressed: onPressed,
      backgroundColor: color,
      borderRadius: borderRadius,
    );
  }

  factory PrimaryButton.rounded({
    required Text titleText,
    VoidCallback? onPressed,
    Color? backgroundColor,
    required double radius,
  }) {
    return PrimaryButton(
      titleText: titleText,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderRadius: radius,
    );
  }

  final Text titleText;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  final Color? backgroundColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveStyle = style ?? ElevatedButton.styleFrom();
    if (backgroundColor != null || borderRadius != null) {
      final overrideStyle = ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: borderRadius != null ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius!)) : null,
      );
      effectiveStyle = effectiveStyle.merge(overrideStyle);
    }

    return ElevatedButton(onPressed: onPressed, style: effectiveStyle, child: titleText);
  }
}
