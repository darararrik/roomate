import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.onTap,
    required this.iconPath,
  });

  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: subtitle == null ? const P(vertical: S.p12) : const P(vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: S.p12,
          children: [
            Align(alignment: .topLeft, child: AppIcon(iconPath)),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: context.colors.graysStroke300)),
                ),
                child: Padding(
                  padding: subtitle == null ? const P(bottom: S.p16) : const P(bottom: S.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title, style: context.typography.headline2),
                      if (subtitle != null) ...[
                        const SizedBox(height: S.p8),
                        Text(
                          subtitle!,
                          style: context.typography.bodyDescription.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
