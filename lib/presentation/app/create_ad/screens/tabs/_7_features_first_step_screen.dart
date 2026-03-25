import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class FeaturesFirstStepScreen extends ConsumerWidget {
  const FeaturesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final data = state.featuresGroups;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data.first,
          onTagSelected: (tag, isSelected) => notifier.updateTag(data.first.groupId, tag.title),
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[1].groupId, tag.title),
        ),
        SelectableTagGroup(
          tagsGroup: data.last,
          onTagSelected: (tag, isSelected) => notifier.updateTag(data.last.groupId, tag.title),
        ),
      ],
    );
  }
}
