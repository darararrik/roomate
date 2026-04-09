import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class AdressItem extends StatelessWidget {
  const AdressItem({super.key, required this.title, required this.subtitle, required this.onTap});

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
          spacing: S.p12,
          children: [
            const Align(alignment: .topLeft, child: AppIcon(AppIcons.street)),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: context.colors.graysStroke300)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: S.p8,
                  children: [
                    Text(title, style: context.typography.headline2),
                    Text(
                      subtitle,
                      style: context.typography.bodyDescription.copyWith(
                        color: context.colors.graysText400,
                        height: 17 / 14,
                      ),
                    ),
                    const SizedBox(height: S.p12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
