import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class CreateActionCard extends StatelessWidget {
  const CreateActionCard({super.key, required this.title, required this.onTap, this.subtitle, this.caption});

  final String title;
  final String? subtitle;
  final String? caption;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.graysLight50,
      borderRadius: BorderRadius.circular(S.p24),
      child: InkWell(
        borderRadius: BorderRadius.circular(S.p24),
        onTap: onTap,
        child: Padding(
          padding: const P(all: S.p24),
          child: Row(
            spacing: S.p12,
            children: [
              IconButtonWidget(
                icon: AppIcons.docs,
                iconColor: context.colors.lightOrange100,
                backgroundColor: context.colors.graysWhite,
                size: S.p48,
              ),
              Expanded(
                child: Column(
                  spacing: S.p4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.typography.bodyDescription),
                    if (subtitle != null && subtitle!.isNotEmpty)
                      Text(subtitle!, style: context.typography.bodySmall.copyWith(color: context.colors.graysText400)),
                    if (caption != null && caption!.isNotEmpty)
                      Text(caption!, style: context.typography.bodySmall.copyWith(color: context.colors.graysText400)),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, size: S.p32, color: context.colors.graysIcon500),
            ],
          ),
        ),
      ),
    );
  }
}
