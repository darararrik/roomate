import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/domain/models/common/option_model.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class DealTermsStepScreen extends HookConsumerWidget {
  const DealTermsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);
    final costController = useTextEditingController();
    final depositController = useTextEditingController();
    final l10n = context.l10n;

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            if (options.currency.isNotEmpty) ...[
              ChipWrap(
                title: 'Валюта',
                options: options.currency,
                selectedIds: draft.currencyId != 0 ? {draft.currencyId} : {},
                onSelectionChanged: (ids) {
                  if (ids.isEmpty) {
                    notifier.setCurrencyId(0);
                    return;
                  }
                  final id = ids.first;
                  final OptionModel opt = options.currency.firstWhere((e) => e.id == id);
                  notifier.setCurrencySelection(id, opt.title);
                },
                singleSelection: true,
              ),
              const SizedBox(height: S.p12),
            ],
            TextFieldWithTitle.withSuffix(
              title: context.l10n.price,
              hintText: context.l10n.forExampleDeposit,
              controller: costController,
              suffix: draft.selectedCurrency.symbol,
              needSuffixIcon: false,
              onChanged: notifier.updateCost,
            ),
            const SizedBox(height: S.p12),
            if (options.prepayment.isNotEmpty) ...[
              ChipWrap(
                title: l10n.prepayment,
                options: options.prepayment,
                selectedIds: draft.prepaymentId != 0 ? {draft.prepaymentId} : {},
                onSelectionChanged: (ids) {
                  notifier.setPrepayment(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
              const SizedBox(height: S.p12),
            ],
            TextFieldWithTitle.withSuffix(
              title: context.l10n.deposit,
              hintText: context.l10n.forExampleDeposit,
              controller: depositController,
              suffix: draft.selectedCurrency.symbol,
              needSuffixIcon: false,
              onChanged: notifier.updateDeposit,
            ),
            const SizedBox(height: S.p12),
            if (options.rentDuration.isNotEmpty) ...[
              ChipWrap(
                title: l10n.rentalPeriod,
                options: options.rentDuration,
                selectedIds: draft.rentDurationId != 0 ? {draft.rentDurationId} : {},
                onSelectionChanged: (ids) {
                  notifier.setRentDuration(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
              const SizedBox(height: S.p12),
            ],
            if (options.rentConditions.isNotEmpty)
              ChipWrap(
                title: l10n.rentalConditionsTitle,
                options: options.rentConditions,
                selectedIds: draft.rentConditionsIds,
                onSelectionChanged: notifier.setRentConditionsIds,
                singleSelection: false,
              ),
          ],
        );
      },
    );
  }
}
