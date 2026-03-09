import 'package:flutter/material.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/common/app_icon.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.icon,
    this.onPressed,
    this.padding = EdgeInsets.zero,
    this.iconColor,
    this.backgroundColor,
    this.overlayColor,
    this.radius = 12,
    this.size = 48,
    this.iconSize = 24,
  });

  final String icon;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? overlayColor;
  final double radius;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Material(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: .circular(radius),
        child: InkWell(
          borderRadius: .circular(radius),
          overlayColor: WidgetStatePropertyAll(overlayColor),
          onTap: onPressed,
          child: Padding(
            padding: padding,
            child: Center(
              child: AppIcon(
                icon,
                size: iconSize,
                color: iconColor ?? context.colors.graysBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
