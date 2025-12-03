import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String iconPath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const P(left: S.p12, right: S.p4),
        child: Padding(
          padding: const P(horizontal: S.p12),
          child: Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(color: context.colors.white, borderRadius: .circular(S.p12)),
                child: Padding(padding: const .all(S.p10), child: AppIcon(iconPath)),
              ),
              const SizedBox(width: S.p4),
              Expanded(
                child: Padding(
                  padding: const .symmetric(horizontal: S.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title, style: context.textStyle.bodyDescription),
                      const SizedBox(height: S.p8),
                      Text(subtitle, style: context.textStyle.bodySmall.copyWith(color: context.colors.text400)),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: S.p4),
              AppIcon(AppIcons.arrowRight, color: context.colors.icon500),
            ],
          ),
        ),
      ),
    );
  }
}
