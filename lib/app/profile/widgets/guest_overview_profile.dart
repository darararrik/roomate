import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/auth/notifier/auth_notifier.dart';
import 'package:roomate/app/profile/widgets/overview_profile_menu.dart';
import 'package:roomate/lib.dart';

class GuestOverviewProfile extends ConsumerWidget {
  const GuestOverviewProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const P(vertical: S.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: P(horizontal: S.p12, vertical: S.p4),
                child: CircleAvatar(radius: S.p50),
              ),
              const SizedBox(height: S.p12),
              Padding(
                padding: const P(horizontal: S.p24),
                child: Text(
                  'Войдите, чтобы пользоваться всеми возможностями приложения.',
                  textAlign: TextAlign.center,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ),
            ],
          ),
        ),
        OverviewProfileMenu(
          items: [
            ProfileMenuItem(
              iconPath: AppIcons.settings,
              title: context.l10n.settings,
              onTap: () => ref.read(globalProfileProvider.notifier).openSettings(),
            ),
            ProfileMenuItem(iconPath: AppIcons.help, title: context.l10n.support, onTap: () {}),
          ],
        ),
        Padding(
          padding: const P(horizontal: S.p16, top: S.p24),
          child: PrimaryButton(
            text: context.l10n.login,
            onPressed: () => ref.read(authProvider.notifier).enterByPhoneNumber(),
          ),
        ),
      ]),
    );
  }
}
