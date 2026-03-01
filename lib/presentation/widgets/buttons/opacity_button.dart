import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';

class OpacityButton extends StatelessWidget {
  const OpacityButton({
    super.key,
    required this.child,
    this.onPressed,
    this.bgColor,
    this.color,
    this.icon,
    this.height,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final double? height;
  final Color? bgColor;
  final Color? color;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    Widget content = child;
    if (icon != null) {
      content = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          const SizedBox(width: S.p12),
          Flexible(child: child),
        ],
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: color,
        minimumSize: height != null ? Size(double.infinity, height!) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(S.p32),
        ),
      ),
      child: content,
    );
  }
}
