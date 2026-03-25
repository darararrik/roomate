import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/presentation.dart';

//Things in the apartment
//TODO: переименовать
@RoutePage()
class FeaturesSecondStepScreen extends HookConsumerWidget {
  const FeaturesSecondStepScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final data = state.thingsGroups;

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
          tagsGroup: data[2],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[2].groupId, tag.title),
        ),
        SelectableTagGroup(
          tagsGroup: data[3],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[3].groupId, tag.title),
        ),
        SelectableTagGroup(
          tagsGroup: data[4],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[4].groupId, tag.title),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
