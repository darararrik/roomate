import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class FeaturesFirstStepScreen extends ConsumerWidget {
  const FeaturesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final options = ref.watch(getAdFormOptionsProvider).requireValue;
    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.renovationLabel,
          options: options.renovation,
          selectedIds: state.renovationId != 0 ? {state.renovationId} : {},
          onSelectionChanged: (ids) {
            notifier.setRenovation(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.renovationError,
        ),
        ChipWrap(
          title: l10n.elevator,
          options: options.elevators,
          selectedIds: state.elevatorsId != 0 ? {state.elevatorsId} : {},
          onSelectionChanged: (ids) {
            notifier.setElevators(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.elevatorsError,
        ),
        ChipWrap(
          title: l10n.balconies,
          options: options.balconies,
          selectedIds: state.balconiesId != 0 ? {state.balconiesId} : {},
          onSelectionChanged: (ids) {
            notifier.setBalconies(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.balconiesError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
