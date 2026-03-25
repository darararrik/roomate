import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/state/state.dart';

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalProfileProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(context.l10n.profile, style: context.typography.headline1),
            centerTitle: true,
            canPop: false,
          ),
          // Обработка разных состояний AsyncValue (data, loading, error)
          state.when(
            data: (profile) => SliverPadding(
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
                    Text(
                      "${profile.firstName} ${profile.lastName}",
                      style: context.typography.bodyTitle,
                    ),
                    const SizedBox(height: S.p8),
                    Text(
                      profile.phone,
                      style: context.typography.bodyDescription.copyWith(
                        color: context.colors.graysText400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            loading: () =>
                const SliverFillRemaining(child: Center(child: CircularProgressIndicator())),
            error: (err, stack) =>
                SliverFillRemaining(child: Center(child: Text('Ошибка загрузки: $err'))),
          ),

          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverToBoxAdapter(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.graysLight100,
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
                        onTap: () => context.pushRoute(const ProfileEditRoute()),
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
