import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class RoomTypeStepScreen extends ConsumerWidget {
  const RoomTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final options = ref.watch(getAdFormOptionsProvider).requireValue;

    return Padding(
      padding: const P(horizontal: S.p16),
      child: ChipWrap(
        title: context.l10n.typeOfProperty,
        options: options.premisesType,
        selectedIds: state.premisesTypeId != 0 ? {state.premisesTypeId} : {},
        onSelectionChanged: (ids) {
          notifier.setPremisesType(ids.isNotEmpty ? ids.first : 0);
        },
        singleSelection: true,
        errorText: flow.premisesError,
      ),
    );
  }
}
