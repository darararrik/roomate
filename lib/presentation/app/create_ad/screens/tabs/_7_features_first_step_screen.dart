import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class FeaturesFirstStepScreen extends HookConsumerWidget {
  const FeaturesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(createAdProvider.select((s) => s.featuresFirstTags));

    return ListView.builder(
      itemCount: data.length,
      padding: const P(horizontal: S.p16),
      itemBuilder: (context, index) {
        final tagsGroup = data[index];
        // Для анимитис и аплаянсис мультивыбор (isRadio: false)
        final isRadio = !['amenities', 'appliances'].contains(tagsGroup.groupId);
        return SelectableTagGroup(
          tagsGroup: tagsGroup,
          isRadio: isRadio,
          onTagSelected: (tag, isSelected) {
            ref.read(createAdProvider.notifier).updateFeaturesFirstTags(
                  categoryTitle: tagsGroup.groupTitle,
                  tag: tag.title,
                  isSelected: isSelected,
                  isRadio: isRadio,
                );
          },
        );
      },
    );
  }
}
