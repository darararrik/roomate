import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class BB extends StatelessWidget {
  const BB({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AppIcon(AppIcons.arrowLeft, width: S.p32, height: S.p32, color: context.colors.black),
      onPressed: onPressed ?? () => context.pop(),
    );
  }
}
