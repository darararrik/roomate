import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(
              context.l10n.profile,
              style: context.typography.headline1,
            ),
            centerTitle: true,
            canPop: false,
          ),
          SliverPadding(
            padding: const P(vertical: S.p24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: P(horizontal: S.p12, vertical: S.p4),
                    child: CircleAvatar(radius: S.p50),
                  ),
                  const SizedBox(height: S.p12),
                  Text('Сергей Иванов', style: context.typography.bodyTitle),
                  const SizedBox(height: S.p8),
                  Text(
                    '+7 913 123 12 34',
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.text400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverToBoxAdapter(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.light100,
                  borderRadius: BorderRadius.circular(S.p32),
                ),
                child: Padding(
                  padding: const P(vertical: S.p24),
                  child: Column(
                    children: [
                      ProfileMenuItem(
                        iconPath: AppIcons.personSettings,
                        title: context.l10n.profile,
                        subtitle: context.l10n.profileSubtitle,
                        onTap: () =>
                            context.pushRoute(const ProfileEditRoute()),
                      ),
                      ProfileMenuItem(
                        iconPath: AppIcons.shield,
                        title: context.l10n.verification,
                        subtitle: context.l10n.verificationSubtitle,
                        onTap: () {},
                      ),
                      ProfileMenuItem(
                        iconPath: AppIcons.settings,
                        title: context.l10n.settings,
                        subtitle: context.l10n.settingsSubtitle,
                        onTap: () {},
                      ),
                      ProfileMenuItem(
                        iconPath: AppIcons.help,
                        title: context.l10n.support,
                        subtitle: context.l10n.supportSubtitle,
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
