import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class AdressItem extends StatelessWidget {
  const AdressItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const P(horizontal: S.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: P(all: S.p10),
              child: AppIcon(AppIcons.street),
            ),
            const SizedBox(width: S.p12),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: context.colors.graysStroke300),
                  ),
                ),
                child: Padding(
                  padding: const P(bottom: S.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title, style: context.typography.bodyDescription),
                      if (subtitle.isNotEmpty) ...[
                        const SizedBox(height: S.p8),
                        Text(
                          subtitle,
                          style: context.typography.bodySmall.copyWith(
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
