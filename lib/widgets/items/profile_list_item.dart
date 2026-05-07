import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

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
        spacing: S.p4,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: AppIcon(
              iconPath,
              color: context.colors.lightOrange100,
              width: S.p24,
              height: S.p24,
            ),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: context.colors.graysStroke300)),
              ),
              child: Padding(
                padding: const P(vertical: S.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: context.typography.bodyTitle.copyWith(height: 17 / 14)),
                    const SizedBox(height: S.p8),
                    Text(
                      value,
                      style: context.typography.bodyDescription.copyWith(
                        color: context.colors.graysText400,
                        height: 17 / 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: AppIcon(
              AppIcons.arrowRight,
              color: context.colors.graysIcon500,
              width: S.p32,
              height: S.p32,
            ),
          ),
        ],
      ),
    );
  }
}
