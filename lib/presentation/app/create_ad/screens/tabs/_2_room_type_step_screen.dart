import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RoomTypeStepScreen extends HookConsumerWidget {
  const RoomTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(createAdProvider.select((s) => s.roomTypeTags));
    return Padding(
      padding: const P(horizontal: S.p16),
      child: SelectableTagGroup(
        tagsGroup: data[0],
        description: context.l10n.whatTypeOfRoom,
        isRadio: true,
        onTagSelected: (tag, isSelected) {
          ref
              .read(createAdProvider.notifier)
              .updateRoomTypeTags(
                categoryTitle: data[0].groupTitle,
                tag: tag.title,
                isSelected: isSelected,
              );
        },
      ),
    );
  }
}
