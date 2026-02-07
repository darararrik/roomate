import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class BB extends StatelessWidget {
  const BB({super.key, this.onPressed, this.color});
  final VoidCallback? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => context.pop(),
      icon: AppIcon(
        AppIcons.arrowLeft,
        color: color ?? context.colors.black,
        size: S.p24,
      ),
    );
  }
}
