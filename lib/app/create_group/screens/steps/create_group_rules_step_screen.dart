import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupRulesStepScreen extends HookConsumerWidget {
  const CreateGroupRulesStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(groupFormProvider.notifier);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final l10n = context.l10n;

    final areaController = useTextEditingController(
      text: state.apartmentArea == 0 ? '' : state.apartmentArea.toString(),
    );
    final floorController = useTextEditingController(
      text: state.floor == 0 ? '' : '${state.floor}',
    );
    final totalFloorsController = useTextEditingController(
      text: state.totalFloors == 0 ? '' : '${state.totalFloors}',
    );

    useEffect(() {
      final nextArea = state.apartmentArea == 0
          ? ''
          : state.apartmentArea.toString();
      if (areaController.text != nextArea) {
        areaController.text = nextArea;
      }
      return null;
    }, [state.apartmentArea]);

    useEffect(() {
      final nextFloor = state.floor == 0 ? '' : '${state.floor}';
      if (floorController.text != nextFloor) {
        floorController.text = nextFloor;
      }
      return null;
    }, [state.floor]);

    useEffect(() {
      final nextTotalFloors = state.totalFloors == 0
          ? ''
          : '${state.totalFloors}';
      if (totalFloorsController.text != nextTotalFloors) {
        totalFloorsController.text = nextTotalFloors;
      }
      return null;
    }, [state.totalFloors]);

    return ListView(
      padding: const P(horizontal: S.p16, bottom: S.p24),
      children: [
        ChipWrap(
          title: l10n.numberOfRooms,
          options: options.roomsCount,
          selectedIds: state.roomsCountId == 0
              ? const {}
              : {state.roomsCountId},
          onSelectionChanged: (ids) {
            notifier.setRoomsCount(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.roomsError,
        ),
        TextFieldWithTitle.withSuffix(
          title: l10n.apartmentArea,
          hintText: l10n.enterApartmentArea,
          controller: areaController,
          suffix: l10n.squareMeters,
          onChanged: notifier.updateApartmentArea,
          needSuffixIcon: false,
          errorText: flow.areaError,
        ),
        TextFieldWithTitle.number(
          title: l10n.floor,
          hintText: l10n.enterFloor,
          controller: floorController,
          onChanged: notifier.updateFloor,
          errorText: flow.floorError,
        ),
        TextFieldWithTitle.number(
          title: l10n.floorsInBuilding,
          hintText: l10n.numberOfFloors,
          controller: totalFloorsController,
          onChanged: notifier.updateTotalFloors,
          errorText: flow.totalFloorsError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
