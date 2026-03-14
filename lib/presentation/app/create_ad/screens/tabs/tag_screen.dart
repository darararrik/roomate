import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/tags_group_model.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';

@RoutePage()
class TagScreen extends HookConsumerWidget {
  const TagScreen({super.key, required this.stepKey});
  final SelectionStepKey stepKey;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(categoriesProvider(stepKey));
    final state = ref.watch(createAdProvider);
    return data.when(
      skipLoadingOnRefresh: false,
      data: (listTagsGroup) => ListView.builder(
        itemCount: listTagsGroup.length,
        padding: const P(horizontal: S.p16),
        itemBuilder: (context, index) {
          final TagsGroupModel tagsGroup = listTagsGroup[index];
          final selectedTags =
              state.selectedTags[stepKey]
                  ?.firstWhere(
                    (g) => g.title == tagsGroup.title,
                    orElse: () => tagsGroup.copyWith(tags: []),
                  )
                  .tags ??
              [];
          return SelectableTagGroup(
            tags: tagsGroup,
            selectedTags: selectedTags,
            onTagSelected: (tag, isSelected) {
              ref
                  .read(createAdProvider.notifier)
                  .updateTags(
                    stepKey: stepKey,
                    categoryTitle: tagsGroup.title,
                    tag: tag,
                    isSelected: isSelected,
                    isRadio: tagsGroup.isRadio,
                  );
            },
          );
        },
      ),
      loading: () => const LoadingState(),
      error: (err, stack) => ErrorState(error: err),
    );
  }
}
