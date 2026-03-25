import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RoomTypeStepScreen extends ConsumerWidget {
  const RoomTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final tags = state.premisesTypeGroup;
    return Padding(
      padding: const P(horizontal: S.p16),
      child: SelectableTagGroup(
        tagsGroup: tags,
        description: context.l10n.whatTypeOfRoom,
        onTagSelected: (tag, isSelected) {
          notifier.updateTag(tags.groupId, tag.title);
        },
      ),
    );
  }
}
