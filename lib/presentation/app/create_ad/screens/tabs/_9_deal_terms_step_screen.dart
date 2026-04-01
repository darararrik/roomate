import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_notifier.dart';
import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(createAdProvider);
    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final costController = useTextEditingController();
    final depositController = useTextEditingController();
    final data = taxonomy.dealTermsGroups;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data[0],
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.currency),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.currency, tag.id),
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.price,
          hintText: context.l10n.forExampleDeposit,
          controller: costController,
          suffix: draft.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: (value) => notifier.updateCost(value),
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.prepayment),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.prepayment, tag.id),
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.deposit,
          hintText: context.l10n.forExampleDeposit,
          controller: depositController,
          suffix: draft.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: (value) => notifier.updateDeposit(value),
        ),
        SelectableTagGroup(
          tagsGroup: data[2],
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.rentalPeriod),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.rentalPeriod, tag.id),
        ),
        SelectableTagGroup(
          tagsGroup: data[3],
          selectionStyle: TagSelectionStyle.checkboxChips,
          selectedIds: notifier.selectedIdsForType(CreateAdTagTypeIds.rentalConditions),
          onTagSelected: (tag, isSelected) =>
              notifier.updateTag(CreateAdTagTypeIds.rentalConditions, tag.id),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
