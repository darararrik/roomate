import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class ListItemArrow extends StatelessWidget {
  const ListItemArrow({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconPath,
    this.color,
  });
  final VoidCallback onTap;
  final String title;
  final String iconPath;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: S.p4,
        children: [
          Padding(
            padding: const EdgeInsets.all(S.p12),
            child: AppIcon(iconPath, width: S.p24, height: S.p24),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: context.colors.graysStroke300)),
              ),
              child: Padding(
                padding: const P(vertical: S.p24),
                child: Text(
                  title,
                  style: context.typography.bodyDescription.copyWith(color: color),
                ),
              ),
            ),
          ),
          AppIcon(
            AppIcons.arrowRight,
            color: context.colors.graysIcon500,
            width: S.p32,
            height: S.p32,
          ),
        ],
      ),
    );
  }
}
