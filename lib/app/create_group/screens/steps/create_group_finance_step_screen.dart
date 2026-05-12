import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupFinanceStepScreen extends HookConsumerWidget {
  const CreateGroupFinanceStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(groupFormProvider.notifier);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final l10n = context.l10n;
    final priceController = useTextEditingController(
      text: form.pricePerPerson == 0 ? '' : form.pricePerPerson.toString(),
    );

    useEffect(() {
      final nextPrice = form.pricePerPerson == 0
          ? ''
          : form.pricePerPerson.toString();
      if (priceController.text != nextPrice) {
        priceController.text = nextPrice;
      }
      return null;
    }, [form.pricePerPerson]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.price,
          options: options.currency,
          selectedIds: form.currencyId == 0 ? const {} : {form.currencyId},
          onSelectionChanged: (ids) {
            if (ids.isEmpty) {
              return;
            }
            final option = options.currency.firstWhere(
              (e) => e.id == ids.first,
            );
            notifier.setCurrencySelection(option.id, option.title);
          },
          singleSelection: true,
          errorText: flow.currencyError,
        ),
        TextFieldWithTitle.withSuffix(
          title: l10n.createGroupPricePerPersonTitle,
          hintText: l10n.createGroupPricePerPersonHint,
          controller: priceController,
          suffix: form.selectedCurrency.symbol,
          needSuffixIcon: false,
          onChanged: notifier.updatePricePerPerson,
          errorText: flow.priceError,
        ),
        ChipWrap(
          title: l10n.rentalPeriod,
          options: options.rentDuration,
          selectedIds: form.rentDurationId == 0
              ? const {}
              : {form.rentDurationId},
          onSelectionChanged: (ids) {
            notifier.setRentDuration(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.rentDurationError,
        ),
        ChipWrap(
          title: l10n.createGroupUtilitiesTitle,
          options: options.utilitiesPayment,
          selectedIds: form.utilitiesPaymentId == 0
              ? const {}
              : {form.utilitiesPaymentId},
          onSelectionChanged: (ids) {
            notifier.setUtilitiesPayment(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.utilitiesPaymentError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
