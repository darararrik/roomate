import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final options = ref.watch(getAdFormOptionsProvider).requireValue;
    final costController = useTextEditingController();
    final depositController = useTextEditingController();
    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.createAdCurrencyTitle,
          options: options.currency,
          selectedIds: draft.currencyId != 0 ? {draft.currencyId} : {},
          onSelectionChanged: (ids) {
            if (ids.isEmpty) {
              notifier.setCurrencyId(0);
              return;
            }
            final id = ids.first;
            final title = options.currency.firstWhere((e) => e.id == id).title;
            notifier.setCurrencySelection(id, title);
          },
          singleSelection: true,
          errorText: flow.currencyError,
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.price,
          hintText: context.l10n.forExampleDeposit,
          controller: costController,
          suffix: draft.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: notifier.updateCost,
          errorText: flow.priceError,
        ),
        ChipWrap(
          title: l10n.prepayment,
          options: options.prepayment,
          selectedIds: draft.prepaymentId != 0 ? {draft.prepaymentId} : {},
          onSelectionChanged: (ids) {
            notifier.setPrepayment(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.prepaymentError,
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.deposit,
          hintText: context.l10n.forExampleDeposit,
          controller: depositController,
          suffix: draft.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: notifier.updateDeposit,
          errorText: flow.depositError,
        ),
        ChipWrap(
          title: l10n.rentalPeriod,
          options: options.rentDuration,
          selectedIds: draft.rentDurationId != 0 ? {draft.rentDurationId} : {},
          onSelectionChanged: (ids) {
            notifier.setRentDuration(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.rentDurationError,
        ),
        ChipWrap(
          title: l10n.rentalConditionsTitle,
          options: options.rentConditions,
          selectedIds: draft.rentConditionsIds,
          onSelectionChanged: notifier.setRentConditionsIds,
          singleSelection: false,
          errorText: flow.rentConditionsError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
