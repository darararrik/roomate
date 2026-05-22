import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/extensions.dart';

class OpacityButton extends StatelessWidget {
  const OpacityButton({
    super.key,
    required this.text,
    this.onPressed,
    this.bgColor,
    this.color,
    this.icon,
    this.height,
    this.radius,
  });

  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final Color? bgColor;
  final Color? color;
  final Widget? icon;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    Widget content = Text(
      text,
      style: context.typography.activesLabel.copyWith(color: color ?? context.colors.graysWhite),
    );
    if (icon != null) {
      content = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          const SizedBox(width: S.p12),
          Flexible(
            child: Text(
              text,
              style: context.typography.activesLabel.copyWith(color: color ?? context.colors.graysText400),
            ),
          ),
        ],
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: color,
        minimumSize: height != null ? Size(double.infinity, height!) : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? S.p16)),
      ),
      child: content,
    );
  }
}
