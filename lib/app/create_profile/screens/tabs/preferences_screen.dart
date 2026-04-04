import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class PreferencesScreen extends ConsumerWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = context.l10n;
    final colors = context.colors;
    final typography = context.typography;
    final tags = ref.watch(createProfileProvider).tags;
    final notifier = ref.read(createProfileProvider.notifier);
    return ListView(
      padding: const P(horizontal: S.p16, bottom: S.p60),
      children: [
        Padding(
          padding: const P(vertical: S.p28),
          child: Column(
            spacing: S.p8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                locale.tellUsAboutYourselfTitle,
                style: typography.headline1,
              ),
              Text(
                locale.tellUsAboutYourselfSubtitle,
                textAlign: .center,
                style: typography.headline2.copyWith(
                  color: colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        ...tags.map(
          (group) => SelectableTagGroup(
            tagsGroup: group,
            onTagSelected: (tag, isSelected) =>
                notifier.toggleTagSelection(tag.id),
          ),
        ),
      ],
    );
  }
}
