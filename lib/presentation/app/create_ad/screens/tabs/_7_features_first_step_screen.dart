import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class FeaturesFirstStepScreen extends ConsumerWidget {
  const FeaturesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);
    final l10n = context.l10n;

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            if (options.renovation.isNotEmpty)
              ChipWrap(
                title: l10n.renovationLabel,
                options: options.renovation,
                selectedIds: state.renovationId != 0 ? {state.renovationId} : {},
                onSelectionChanged: (ids) {
                  notifier.setRenovation(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
            if (options.renovation.isNotEmpty && options.elevators.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.elevators.isNotEmpty)
              ChipWrap(
                title: l10n.elevator,
                options: options.elevators,
                selectedIds: state.elevatorsId != 0 ? {state.elevatorsId} : {},
                onSelectionChanged: (ids) {
                  notifier.setElevators(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
            if (options.elevators.isNotEmpty && options.balconies.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.balconies.isNotEmpty)
              ChipWrap(
                title: l10n.balconies,
                options: options.balconies,
                selectedIds: state.balconiesId != 0 ? {state.balconiesId} : {},
                onSelectionChanged: (ids) {
                  notifier.setBalconies(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
          ],
        );
      },
    );
  }
}
