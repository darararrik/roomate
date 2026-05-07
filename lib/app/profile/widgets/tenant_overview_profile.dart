import 'package:flutter/material.dart';

import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/profile/widgets/overview_profile_menu.dart';
import 'package:roomate/app/profile/widgets/profile_header.dart';
import 'package:roomate/lib.dart';

class TenantOverviewProfile extends ConsumerWidget {
  const TenantOverviewProfile({super.key, required this.profile});

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
              onTap: () => ref.read(globalProfileProvider.notifier).openMyAccount(),
            ),
            ProfileMenuItem(
              iconPath: AppIcons.docs,
              title: context.l10n.myTransactions,
              onTap: () {},
            ),
            ProfileMenuItem(
              iconPath: AppIcons.settings,
              title: context.l10n.settings,
              onTap: ref.read(globalProfileProvider.notifier).openSettings,
            ),
            ProfileMenuItem(iconPath: AppIcons.help, title: context.l10n.support, onTap: () {}),
          ],
        ),
      ]),
    );
  }
}
