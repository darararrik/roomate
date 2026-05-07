import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/profile/widgets/overview_profile_menu.dart';
import 'package:roomate/app/profile/widgets/profile_header.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

class OwnerOverviewProfile extends ConsumerWidget {
  const OwnerOverviewProfile({super.key, required this.profile});

  final ProfileModel profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildListDelegate([
        OverviewProfileHeader(profile: profile),
        OverviewProfileMenu(
          items: [
            ProfileMenuItem(
              iconPath: AppIcons.personSettings,
              title: context.l10n.myAccount,
              onTap: () => context.pushRoute(const ProfileRoute()),
            ),
            ProfileMenuItem(
              iconPath: AppIcons.settings,
              title: context.l10n.settings,
              onTap: () => context.pushRoute(const SettingsRoute()),
            ),
            ProfileMenuItem(iconPath: AppIcons.help, title: context.l10n.support, onTap: () {}),
          ],
        ),
      ]),
    );
  }
}
