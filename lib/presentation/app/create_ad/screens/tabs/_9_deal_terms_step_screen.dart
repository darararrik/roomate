import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);
    final costController = useTextEditingController();
    final depositController = useTextEditingController();
    final data = state.dealTermsGroups;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data[0],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[0].groupId, tag.title),
        ),
        TextFieldWithTitle.withSuffix(
          title: "За месяц",
          hintText: "Например: 20000",
          controller: costController,
          suffix: state.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: (value) => notifier.updateCost(value),
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[1].groupId, tag.title),
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.deposit,
          hintText: context.l10n.forExampleDeposit,
          controller: depositController,
          suffix: state.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: (value) => notifier.updateDeposit(value),
        ),
        SelectableTagGroup(
          tagsGroup: data[2],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[2].groupId, tag.title),
        ),
        SelectableTagGroup(
          tagsGroup: data[3],
          onTagSelected: (tag, isSelected) => notifier.updateTag(data[3].groupId, tag.title),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
