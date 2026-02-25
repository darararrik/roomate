import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/utils/extensions/currency_x.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions/extensions.dart';
import 'package:roomate/presentation/utils/extensions/list_x.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/loading_state.dart';
import 'package:roomate/presentation/widgets/widgets.dart';
import 'package:roomate/state/createAd/create_ad_notifier.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepKey = SelectionStepKey.dealTerms;
    final categoriesState = ref.watch(categoriesProvider(stepKey));
    final notifier = ref.read(createAdProvider.notifier);
    final state = ref.watch(createAdProvider);
    final costController = useTextEditingController();
    return categoriesState.when(
      data: (data) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            SelectableTagGroup(
              isRadio: true,
              title: data[0].title,
              tags: data[0].tags,
              onTagSelected: (tag, isSelected) {
                notifier.updateCurrency(tag);
              },
            ),
            TextFieldWithTitle.withSuffix(
              title: "За месяц",
              hintText: "Например: 20000",
              controller: costController,
              suffix: state.selectedCurrency.symbol,
            ),
            SelectableTagGroup(
              isRadio: true,
              title: data[1].title,
              tags: data[1].tags,
              onTagSelected: (tag, isSelected) {
                notifier.updateTags(
                  stepKey: stepKey,
                  categoryTitle: data[1].title,
                  tag: tag,
                  isSelected: isSelected,
                );
              },
            ),
            TextFieldWithTitle.withSuffix(
              title: "Залог",
              hintText: "Например: 20000",
              controller: costController,
              suffix: state.selectedCurrency.symbol,
            ),
            SelectableTagGroup(
              isRadio: true,
              title: data[2].title,
              tags: data[2].tags,
              onTagSelected: (tag, isSelected) {
                notifier.updateTags(
                  stepKey: stepKey,
                  categoryTitle: data[2].title,
                  tag: tag,
                  isSelected: isSelected,
                );
              },
            ),
            SelectableTagGroup(
              isRadio: true,
              title: data[3].title,
              tags: data[3].tags,
              onTagSelected: (tag, isSelected) {
                notifier.updateTags(
                  stepKey: stepKey,
                  categoryTitle: data[3].title,
                  tag: tag,
                  isSelected: isSelected,
                );
              },
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
      error: (Object error, StackTrace stackTrace) => const LoadingState(),
      loading: () => const LoadingState(),
    );
  }
}
