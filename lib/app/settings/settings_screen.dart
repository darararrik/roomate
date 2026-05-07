import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/widgets/items/list_item_arrow.dart';

@RoutePage()
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.settings), centerTitle: false),
          SliverPadding(
            padding: const P(horizontal: S.p16, top: S.p24),
            sliver: SliverFillRemaining(
              child: Column(
                spacing: S.p16,
                children: [
                  ListItemArrow(
                    onTap: () {},
                    title: context.l10n.notifications,
                    iconPath: AppIcons.notification,
                  ),
                  ListItemArrow(
                    onTap: () {},
                    title: context.l10n.language,
                    iconPath: AppIcons.world,
                  ),
                  ListItemArrow(
                    onTap: () => ref.read(globalProfileProvider.notifier).logout(),
                    title: context.l10n.logout,
                    iconPath: AppIcons.exit,
                  ),
                  ListItemArrow(
                    onTap: () {},
                    title: context.l10n.deleteAccount,
                    iconPath: AppIcons.trash2,
                    color: context.colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
