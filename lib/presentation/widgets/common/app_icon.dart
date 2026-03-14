import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:roomate/presentation/constants/spacing.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.assetName, {
    super.key,
    this.width = S.p24,
    this.height = S.p24,
    this.color,
    this.fit,
  });
  final String assetName;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
