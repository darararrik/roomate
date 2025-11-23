import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions/extensions.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Text(context.l10n.profile, style: context.textStyle.headline1), centerTitle: true),
          SliverPadding(
            padding: const P(vertical: S.p24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  const Padding(
                    padding: .symmetric(horizontal: S.p12, vertical: S.p4),
                    child: CircleAvatar(radius: S.p50),
                  ),
                  const SizedBox(height: S.p12),
                  Text('Сергей Иванов', style: context.textStyle.bodyTitle),
                  const SizedBox(height: S.p8),
                  Text(
                    '+7 913 123 12 34',
                    style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverToBoxAdapter(
              child: DecoratedBox(
                decoration: BoxDecoration(color: context.colors.light100, borderRadius: .circular(S.p32)),
                child: Padding(
                  padding: const .symmetric(vertical: S.p24),
                  child: Column(
                    children: [
                      _ProfileMenuItem(
                        iconPath: AppIcons.personSettings,
                        title: context.l10n.profile,
                        subtitle: context.l10n.profile_subtitle,
                        onTap: () {},
                      ),
                      _ProfileMenuItem(
                        iconPath: AppIcons.shield,
                        title: context.l10n.verification,
                        subtitle: context.l10n.verification_subtitle,
                        onTap: () {},
                      ),
                      _ProfileMenuItem(
                        iconPath: AppIcons.settings,
                        title: context.l10n.settings,
                        subtitle: context.l10n.settings_subtitle,
                        onTap: () {},
                      ),
                      _ProfileMenuItem(
                        iconPath: AppIcons.help,
                        title: context.l10n.support,
                        subtitle: context.l10n.support_subtitle,
                        onTap: () {},
                      ),
                    ].separated(const SizedBox(height: S.p24)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  const _ProfileMenuItem({required this.iconPath, required this.title, required this.subtitle, required this.onTap});
  final String iconPath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(left: S.p12, right: S.p4),
      child: GestureDetector(
        onTap: onTap,
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
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .center,
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
