import 'package:flutter/material.dart';

import 'package:roomate/presentation/presentation.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
  });
  final VoidCallback onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(S.p12),
      overlayColor: WidgetStatePropertyAll(context.colors.opacityWhite10),
      child: SizedBox.square(
        dimension: S.p48,

        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.opacityWhite10,
            borderRadius: BorderRadius.circular(S.p12),
          ),
          child: Padding(
            padding: const P(all: S.p12),
            child: AppIcon(iconPath, color: context.colors.graysWhite),
          ),
        ),
      ),
    );
  }
}
