import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';

class BB extends StatelessWidget {
  const BB({super.key, this.onPressed, this.color});
  final VoidCallback? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => context.pop(),
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: color ?? context.colors.graysBlack,
        size: S.p24,
      ),
    );
  }
}
