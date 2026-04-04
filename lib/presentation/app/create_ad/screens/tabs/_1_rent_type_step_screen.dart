import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class RentTypeStepScreen extends ConsumerWidget {
  const RentTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return SingleChildScrollView(
          padding: const P(horizontal: S.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: S.p12),
              if (options.rentGoal.isNotEmpty)
                ChipWrap(
                  title: 'Цель аренды',
                  options: options.rentGoal,
                  selectedIds: state.rentGoalId != 0 ? {state.rentGoalId} : {},
                  onSelectionChanged: (ids) {
                    notifier.setRentGoal(ids.isNotEmpty ? ids.first : 0);
                  },
                  singleSelection: true,
                ),
              const SizedBox(height: S.p12),
              if (options.rentPeriod.isNotEmpty)
                ChipWrap(
                  title: 'Срок аренды',
                  options: options.rentPeriod,
                  selectedIds: state.rentPeriodId != 0 ? {state.rentPeriodId} : {},
                  onSelectionChanged: (ids) {
                    notifier.setRentPeriod(ids.isNotEmpty ? ids.first : 0);
                  },
                  singleSelection: true,
                ),
              const SizedBox(height: S.p12),
              if (options.whoCanRent.isNotEmpty)
                ChipWrap(
                  title: 'Кто может снимать',
                  options: options.whoCanRent,
                  selectedIds: state.whoCanRentIds,
                  onSelectionChanged: notifier.setWhoCanRentIds,
                  singleSelection: false,
                ),
              const SizedBox(height: S.p32),
            ],
          ),
        );
      },
    );
  }
}
