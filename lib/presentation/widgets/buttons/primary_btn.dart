import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
    this.icon,
    this.gap = S.p8,
    this.mainAxisSize = MainAxisSize.min,
  });

  final Widget title;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderRadius;
  final Widget? icon;
  final double gap;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveStyle = style ?? ElevatedButton.styleFrom();
    if (backgroundColor != null ||
        borderRadius != null ||
        foregroundColor != null) {
      final overrideStyle = ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: borderRadius != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
              )
            : null,
      );
      effectiveStyle = effectiveStyle.merge(overrideStyle);
    }

    Widget content = title;
    if (icon != null) {
      content = Row(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(width: gap),
          Flexible(child: title),
        ],
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: effectiveStyle,
      child: content,
    );
  }
}
