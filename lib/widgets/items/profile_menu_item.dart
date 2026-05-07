import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });
  final String iconPath;
  final String title;
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
                decoration: BoxDecoration(
                  color: context.colors.graysWhite,
                  borderRadius: BorderRadius.circular(S.p12),
                ),
                child: Padding(
                  padding: const P(all: S.p10),
                  child: AppIcon(iconPath),
                ),
              ),
              const SizedBox(width: S.p4),
              Expanded(
                child: Padding(
                  padding: const P(horizontal: S.p12),
                  child: Text(title, style: context.typography.bodyDescription),
                ),
              ),
              const SizedBox(width: S.p4),
              AppIcon(AppIcons.arrowRight, color: context.colors.graysIcon500),
            ],
          ),
        ),
      ),
    );
  }
}
