import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class FeaturesFirstStepScreen extends ConsumerWidget {
  const FeaturesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(createAdProvider);
    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final data = taxonomy.featuresGroups;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data.first,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.renovation),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.renovation, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.elevators),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.elevators, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data.last,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.balconies),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.balconies, tag.id),
        ),
      ],
    );
  }
}
