import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupContactsStepScreen extends ConsumerWidget {
  const CreateGroupContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final notifier = ref.read(groupFormProvider.notifier);
    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.furniture,
          options: options.furniture,
          selectedIds: form.furnitureId == 0 ? const {} : {form.furnitureId},
          onSelectionChanged: (ids) {
            notifier.setFurniture(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.furnitureError,
        ),
        ChipWrap(
          title: l10n.amenities,
          options: options.amenities,
          selectedIds: form.amenitiesIds,
          onSelectionChanged: notifier.setAmenitiesIds,
        ),
        ChipWrap(
          title: l10n.bathroomRoom,
          options: options.bathroom,
          selectedIds: form.bathroomIds,
          onSelectionChanged: notifier.setBathroomIds,
        ),
        ChipWrap(
          title: l10n.householdAppliances,
          options: options.appliances,
          selectedIds: form.appliancesIds,
          onSelectionChanged: notifier.setAppliancesIds,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
