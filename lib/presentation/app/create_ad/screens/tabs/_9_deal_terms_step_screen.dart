import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final data = state.dealTermsTags;
    final costController = useTextEditingController();
    final depositController = useTextEditingController();

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data[0],
          onTagSelected: (tag, isSelected) {
            notifier.updateCurrency(tag.title);
          },
        ),
        TextFieldWithTitle.withSuffix(
          title: "За месяц",
          hintText: "Например: 20000",
          controller: costController,
          suffix: state.selectedCurrency.symbol,
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          isRadio: true,
          onTagSelected: (tag, isSelected) {
            notifier.updateDealTermsTags(
              categoryTitle: data[1].groupTitle,
              tag: tag.title,
              isSelected: isSelected,
              isRadio: true,
            );
          },
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.deposit,
          hintText: context.l10n.forExampleDeposit,
          controller: depositController,
          suffix: state.selectedCurrency.symbol,
        ),
        SelectableTagGroup(
          tagsGroup: data[2],
          isRadio: true,
          onTagSelected: (tag, isSelected) {
            notifier.updateDealTermsTags(
              categoryTitle: data[2].groupTitle,
              tag: tag.title,
              isSelected: isSelected,
              isRadio: true,
            );
          },
        ),
        SelectableTagGroup(
          tagsGroup: data[3],
          isRadio: true,
          onTagSelected: (tag, isSelected) {
            notifier.updateDealTermsTags(
              categoryTitle: data[3].groupTitle,
              tag: tag.title,
              isSelected: isSelected,
              isRadio: true,
            );
          },
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
