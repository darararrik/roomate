import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/state/createAd/create_ad_notifier.dart';

@RoutePage()
class TagScreen extends HookConsumerWidget {
  const TagScreen({super.key, required this.stepKey});
  final SelectionStepKey stepKey;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider(stepKey));
    final state = ref.watch(createAdProvider);
    return categoriesAsync.when(
      skipLoadingOnRefresh: false,
      data: (categories) => ListView.builder(
        itemCount: categories.length,
        padding: const P(horizontal: S.p16),
        itemBuilder: (context, index) {
          final category = categories[index];
          final selectedTags =
              state.selectedTags[stepKey]?[category.title] ?? [];
          return SelectableTagGroup(
            title: category.title,
            tags: category.tags,
            selectedTags: selectedTags,
            description: category.description,
            onTagSelected: (tag, isSelected) {
              ref
                  .read(createAdProvider.notifier)
                  .updateTags(
                    stepKey: stepKey,
                    categoryTitle: category.title,
                    tag: tag,
                    isSelected: isSelected,
                  );
            },
          );
        },
      ),
      loading: () => const LoadingState(),
      error: (err, stack) => const LoadingState(),
    );
  }
}
