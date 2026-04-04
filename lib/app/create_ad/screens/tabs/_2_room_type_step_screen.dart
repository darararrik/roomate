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
    final optionsAsync = ref.watch(getAdFormOptionsProvider);

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            ChipWrap(
              title: context.l10n.typeOfProperty,
              options: options.premisesType,
              selectedIds: state.premisesTypeId != 0
                  ? {state.premisesTypeId}
                  : {},
              onSelectionChanged: (ids) {
                notifier.setPremisesType(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              //TODO: разобраться
              errorText: flow.amenitiesError,
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
    );
  }
}
