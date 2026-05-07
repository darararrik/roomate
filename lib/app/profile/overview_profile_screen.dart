import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/profile/widgets/widgets.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class OverviewProfileScreen extends ConsumerWidget {
  const OverviewProfileScreen({super.key});

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
          state.when(
            data: (profile) {
              if (profile.isGuest) {
                return const GuestOverviewProfile();
              }

              return profile.isOwner
                  ? OwnerOverviewProfile(profile: profile)
                  : TenantOverviewProfile(profile: profile);
            },
            loading: () =>
                const SliverFillRemaining(child: Center(child: CircularProgressIndicator())),
            error: (err, stack) => SliverFillRemaining(
              child: Center(
                child: Text(context.l10n.profileLoadErrorWithDetails(err.toString())),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
