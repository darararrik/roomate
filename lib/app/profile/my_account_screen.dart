import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/profile/widgets/account_action_card.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class MyAccountScreen extends ConsumerWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalProfileProvider);

    return Scaffold(
      body: state.when(
        data: (profile) {
          final notifier = ref.read(globalProfileProvider.notifier);
          return CustomScrollView(
            slivers: [
              AB(title: Text(context.l10n.myAccount, style: context.typography.headline1), centerTitle: false),
              SliverPadding(
                padding: const P(horizontal: S.p16, vertical: S.p24),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: S.p4,
                    children: [
                      const Padding(
                        padding: P(horizontal: S.p12, vertical: S.p4),
                        child: CircleAvatar(radius: S.p26),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: S.p4,
                          children: [
                            Text(
                              '${profile.firstName} ${profile.lastName}'.trim(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.typography.bodyTitle,
                            ),
                            Text(
                              profile.phone,
                              style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const P(right: S.p12),
                        child: IconButtonWidget(
                          onPressed: notifier.openProfileEdit,
                          icon: AppIcons.edit,
                          iconColor: context.colors.lightOrange100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const P(horizontal: S.p16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: S.p12,
                    crossAxisSpacing: S.p12,
                    childAspectRatio: 1.28,
                  ),
                  delegate: SliverChildListDelegate.fixed(_accountActions(context, profile.isOwner)),
                ),
              ),
            ],
          );
        },
        error: (e, stacktrace) => ErrorView(error: e.toString()),
        loading: () => const LoadingWidget(),
      ),
    );
  }

  List<Widget> _accountActions(BuildContext context, bool isOwner) {
    if (isOwner) {
      return [
        AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.ownerWallet, onTap: () {}),
        AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.verification, onTap: () {}),
        AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.loginByTenant, onTap: () {}),
        const SizedBox.shrink(),
      ];
    }

    return [
      AccountActionCard(
        iconPath: AppIcons.personSettings,
        title: context.l10n.myProfile,
        onTap: () => context.router.push(const MyQuestionnaireRoute()),
      ),
      AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.verification, onTap: () {}),
      AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.paymentMethods, onTap: () {}),
      AccountActionCard(iconPath: AppIcons.personSettings, title: context.l10n.loginByOwner, onTap: () {}),
    ];
  }
}
