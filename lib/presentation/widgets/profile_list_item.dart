import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.value,
    required this.onTap,
  });

  final String iconPath;
  final String title;
  final String value;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          AppIcon(iconPath, color: context.colors.orange100),
          const SizedBox(width: S.p12),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: context.colors.stroke300)),
              ),
              child: Padding(
                padding: const P(vertical: S.p6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: context.typography.bodyTitle),
                    const SizedBox(height: S.p8),
                    Text(value, style: context.typography.bodyDescription.copyWith(color: context.colors.text400)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: S.p12),
          AppIcon(AppIcons.arrowRight, color: context.colors.icon500),
        ],
      ),
    );
  }
}
