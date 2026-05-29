import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class HomeActionCard extends StatelessWidget {
  const HomeActionCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
    this.imageWidth = 98,
    this.imageHeight = 98,
  });

  final String title;
  final String imagePath;
  final VoidCallback onTap;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(S.p32),
      color: context.colors.graysLight50,
      child: InkWell(
        borderRadius: BorderRadius.circular(S.p32),
        onTap: onTap,
        child: Padding(
          padding: const P(horizontal: S.p16, top: S.p24, bottom: S.p8),
          child: Column(
            spacing: S.p12,
            crossAxisAlignment: .start,
            children: [
              Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: context.typography.bodyDescription),
              Align(
                alignment: .bottomRight,
                child: ActionCardImage(imagePath: imagePath, width: imageWidth, height: imageHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
