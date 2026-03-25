import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class PropertyTypeStepScreen extends HookConsumerWidget {
  const PropertyTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final tags = state.propertyTypeGroup;
    return Padding(
      padding: const P(horizontal: S.p16),
      child: SelectableTagGroup(
        tagsGroup: tags,
        onTagSelected: (tag, isSelected) {
          notifier.updateTag(tags.groupId, tag.title);
        },
      ),
    );
  }
}
