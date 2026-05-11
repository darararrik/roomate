import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class AccountActionCard extends StatelessWidget {
  const AccountActionCard({
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
    return Material(
      color: context.colors.graysLight100,
      borderRadius: BorderRadius.circular(S.p32),
      child: GestureDetector(
        onTap: onTap,
        // borderRadius: BorderRadius.circular(S.p32),
        child: Padding(
          padding: const P(horizontal: S.p12, vertical: S.p16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.graysWhite,
                  borderRadius: BorderRadius.circular(S.p12),
                ),
                child: Padding(
                  padding: const P(all: S.p12),
                  child: AppIcon(
                    iconPath,
                    width: S.p24,
                    height: S.p24,
                    color: context.colors.lightOrange100,
                  ),
                ),
              ),
              const SizedBox(height: S.p12),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.typography.bodyDescription.copyWith(
                  height: 17 / 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
