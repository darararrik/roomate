import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class ActionCardImage extends StatelessWidget {
  const ActionCardImage({super.key, required this.imagePath, this.width = 98, this.height = 98});

  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    if (imagePath.endsWith('.svg')) {
      return AppIcon(imagePath, width: width, height: height);
    }

    return Image.asset(imagePath, width: width, height: height);
  }
}
