import 'package:flutter/material.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.onPressed, required this.iconPath});
  final VoidCallback onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(S.p12),
      overlayColor: WidgetStatePropertyAll(context.colors.white10),
      child: SizedBox(
        width: S.p48,
        height: S.p48,
        child: DecoratedBox(
          decoration: BoxDecoration(color: context.colors.white10, borderRadius: BorderRadius.circular(S.p12)),
          child: Padding(
            padding: const P(all: S.p12),
            child: AppIcon(iconPath, color: context.colors.white),
          ),
        ),
      ),
    );
  }
}
