import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_ad/notifier/ad_form/ad_form_notifier.dart';
import 'package:roomate/app/create_ad/notifier/create_ad_flow/create_ad_flow_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/widgets/chips/chip_wrap.dart';
import 'package:roomate/widgets/common/error_view.dart';
import 'package:roomate/widgets/common/loading_widget.dart';

@RoutePage()
class InputDetailsApStepScreen extends HookConsumerWidget {
  const InputDetailsApStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final areaController = useTextEditingController();
    final floorController = useTextEditingController();
    final totalFloorsController = useTextEditingController();

    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
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
            ChipWrap(
              title: l10n.numberOfRooms,
              options: options.roomsCount,
              selectedIds: state.roomsCountId != 0 ? {state.roomsCountId} : {},
              onSelectionChanged: (ids) {
                notifier.setRoomsCount(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flow.roomsError,
            ),
            TextFieldWithTitle.withSuffix(
              title: context.l10n.apartmentArea,
              hintText: context.l10n.enterApartmentArea,
              controller: areaController,
              suffix: context.l10n.squareMeters,
              onChanged: notifier.updateArea,
              needSuffixIcon: false,
              errorText: flow.areaError,
            ),
            ChipWrap(
              title: l10n.layout,
              options: options.layout,
              selectedIds: state.layoutId != 0 ? {state.layoutId} : {},
              onSelectionChanged: (ids) {
                notifier.setLayout(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flow.layoutError,
            ),
            TextFieldWithTitle.number(
              title: context.l10n.floor,
              hintText: context.l10n.enterFloor,
              controller: floorController,
              onChanged: notifier.updateFloor,
              errorText: flow.floorError,
            ),
            TextFieldWithTitle.number(
              title: context.l10n.floorsInBuilding,
              hintText: context.l10n.numberOfFloors,
              controller: totalFloorsController,
              onChanged: notifier.updateTotalFloors,
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
    );
  }
}
