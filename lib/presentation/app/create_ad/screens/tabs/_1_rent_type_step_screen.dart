import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RentTypeStepScreen extends ConsumerWidget {
  const RentTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(createAdProvider);
    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final tags = taxonomy.rentTypeGroups;
    final goalTags = tags[0];
    final termTags = tags[1];
    final whoToRentTags = tags[2];

    return Padding(
      padding: const P(horizontal: S.p16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: S.p12,
        children: [
          SelectableTagGroup(
            tagsGroup: goalTags,
            selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.goal),
            onTagSelected: (tag, isSelected) {
              notifier.updateTag(CreateAdTagTypeIds.goal, tag.id);
            },
          ),
          SelectableTagGroup(
            tagsGroup: termTags,
            selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.term),
            onTagSelected: (tag, isSelected) {
              notifier.updateTag(CreateAdTagTypeIds.term, tag.id);
            },
          ),
          SelectableTagGroup(
            tagsGroup: whoToRentTags,
            selectionStyle: TagSelectionStyle.checkboxChips,
            selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.whoToRent),
            onTagSelected: (tag, isSelected) {
              notifier.updateTag(CreateAdTagTypeIds.whoToRent, tag.id);
            },
          ),
        ],
      ),
    );
  }
}
