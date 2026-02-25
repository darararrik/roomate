import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:roomate/presentation/constants/spacing.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.assetName, {
    super.key,
    this.size = S.p24,
    this.color,
    this.fit,
  });
  final String assetName;
  final BoxFit? fit;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: size,
      height: size,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
