import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/app_icons.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class RegionListItem extends StatelessWidget {
  const RegionListItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.iconPath,
  });
  final VoidCallback onTap;
  final String title;
  final String subTitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const P(horizontal: S.p12),
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Padding(padding: const .all(S.p10), child: AppIcon(iconPath)),
            const SizedBox(width: S.p12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: context.textStyle.bodyDescription),
                  const SizedBox(height: S.p8),
                  Text(subTitle, style: context.textStyle.bodySmall.copyWith(color: context.colors.text400)),
                ],
              ),
            ),
            const SizedBox(width: S.p12),
            AppIcon(AppIcons.arrowRight, color: context.colors.icon500),
          ],
        ),
      ),
    );
  }
}
