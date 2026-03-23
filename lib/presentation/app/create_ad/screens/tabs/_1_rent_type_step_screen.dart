import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RentTypeStepScreen extends HookConsumerWidget {
  const RentTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(createAdProvider.select((s) => s.rentTypeTags));

    return ListView.builder(
      itemCount: data.length,
      padding: const P(horizontal: S.p16),
      itemBuilder: (context, index) {
        final tagsGroup = data[index];
        return SelectableTagGroup(
          tagsGroup: tagsGroup,
          isRadio: true,
          onTagSelected: (tag, isSelected) {
            ref.read(createAdProvider.notifier).updateRentTypeTags(
                  categoryTitle: tagsGroup.groupTitle,
                  tag: tag.title,
                  isSelected: isSelected,
                );
          },
        );
      },
    );
  }
}
