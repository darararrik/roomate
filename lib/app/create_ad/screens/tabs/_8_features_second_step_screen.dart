import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class FeaturesSecondStepScreen extends ConsumerWidget {
  const FeaturesSecondStepScreen({super.key});

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
          title: l10n.furniture,
          options: options.furniture,
          selectedIds: state.furnitureId != 0 ? {state.furnitureId} : {},
          onSelectionChanged: (ids) {
            notifier.setFurniture(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.furnitureError,
        ),
        ChipWrap(
          title: l10n.amenities,
          options: options.amenities,
          selectedIds: state.amenitiesIds,
          onSelectionChanged: notifier.setAmenitiesIds,
          singleSelection: false,
          errorText: flow.amenitiesError,
        ),
        ChipWrap(
          title: l10n.bathroomRoom,
          options: options.bathroom,
          selectedIds: state.bathroomIds,
          onSelectionChanged: notifier.setBathroomIds,
          singleSelection: false,
          errorText: flow.bathroomError,
        ),
        ChipWrap(
          title: l10n.householdAppliances,
          options: options.appliances,
          selectedIds: state.appliancesIds,
          onSelectionChanged: notifier.setAppliancesIds,
          singleSelection: false,
          errorText: flow.appliancesError,
        ),
        ChipWrap(
          title: l10n.stove,
          options: options.stove,
          selectedIds: state.stoveId != 0 ? {state.stoveId} : {},
          onSelectionChanged: (ids) {
            notifier.setStove(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.stoveError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
