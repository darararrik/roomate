import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.actionTitle,
    required this.onActionTap,
  });

  final String title;
  final String actionTitle;
  final VoidCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: S.p16, bottom: S.p12),
      sliver: SliverToBoxAdapter(
        child: Padding(
          padding: const P(vertical: S.p12, horizontal: S.p8),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(title, style: context.typography.headline1),
              GestureDetector(
                onTap: onActionTap,
                child: Text(
                  actionTitle,
                  style: context.typography.activesLabel.copyWith(
                    color: context.colors.orangeSecond,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
