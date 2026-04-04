import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_ad/notifier/ad_form/ad_form_notifier.dart';
import 'package:roomate/app/create_ad/notifier/create_ad_flow/create_ad_flow_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/widgets/chips/chip_wrap.dart';
import 'package:roomate/widgets/common/error_view.dart';
import 'package:roomate/widgets/common/loading_widget.dart';

@RoutePage()
class RentTypeStepScreen extends ConsumerWidget {
  const RentTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(adFormProvider);
    final flowState = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsyncState = ref.watch(getAdFormOptionsProvider);
    final l10n = context.l10n;

    return optionsAsyncState.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            ChipWrap(
              title: l10n.createAdRentGoalTitle,
              options: options.rentGoal,
              selectedIds: formState.rentGoalId != 0
                  ? {formState.rentGoalId}
                  : {},
              onSelectionChanged: (ids) {
                notifier.setRentGoal(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flowState.rentGoalError,
            ),
            ChipWrap(
              title: l10n.rentalPeriod,
              options: options.rentPeriod,
              selectedIds: formState.rentPeriodId != 0
                  ? {formState.rentPeriodId}
                  : {},
              onSelectionChanged: (ids) {
                notifier.setRentPeriod(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flowState.rentPeriodError,
            ),
            ChipWrap(
              title: l10n.createAdWhoCanRentTitle,
              options: options.whoCanRent,
              selectedIds: formState.whoCanRentIds,
              onSelectionChanged: notifier.setWhoCanRentIds,
              singleSelection: false,
              errorText: flowState.whoCanRentError,
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
    );
  }
}
