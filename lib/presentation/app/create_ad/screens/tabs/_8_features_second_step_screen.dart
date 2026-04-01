import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_notifier.dart';
import 'package:roomate/presentation/presentation.dart';

//Things in the apartment
//TODO: переименовать
@RoutePage()
class FeaturesSecondStepScreen extends HookConsumerWidget {
  const FeaturesSecondStepScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(createAdProvider);
    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final data = taxonomy.thingsGroups;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data.first,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.furniture),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.furniture, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          selectionStyle: TagSelectionStyle.checkboxChips,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.amenities),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.amenities, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[2],
          selectionStyle: TagSelectionStyle.checkboxChips,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.bathroom),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.bathroom, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[3],
          selectionStyle: TagSelectionStyle.checkboxChips,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.appliances),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.appliances, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[4],
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.stove),
          onTagSelected: (tag, isSelected) => notifier.updateTag(CreateAdTagTypeIds.stove, tag.id),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
