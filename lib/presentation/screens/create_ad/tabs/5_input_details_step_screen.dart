import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/text_field_with_title.dart';

@RoutePage()
class InputDetailsApStepScreen extends HookWidget {
  const InputDetailsApStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final areaController = useTextEditingController();
    final floorController = useTextEditingController();
    final totalFloorsController = useTextEditingController();
    return Padding(
      padding: const P(bottom: S.p20),
      child: ListView(
        children: [
          SelectableTagGroup(
            isRadio: true,
            title: context.l10n.numberOfRooms,
            tags: [
              context.l10n.studio,
              "1",
              "2",
              "3",
              "4",
              "5",
              "6+",
              context.l10n.openPlan,
            ],
          ),
          TextFieldWithTitle.area(
            title: context.l10n.apartmentArea,
            hintText: context.l10n.enterApartmentArea,
            controller: areaController,
          ),
          SelectableTagGroup(
            isRadio: true,
            title: context.l10n.layout,
            tags: [
              context.l10n.adjoining,
              context.l10n.isolated,
              context.l10n.combinedLayout,
            ],
          ),
          TextFieldWithTitle.number(
            title: context.l10n.floor,
            hintText: context.l10n.enterFloor,
            controller: floorController,
          ),
          TextFieldWithTitle.number(
            title: context.l10n.floorsInBuilding,
            hintText: context.l10n.numberOfFloors,
            controller: totalFloorsController,
          ),
        ].separated(const SizedBox(height: S.p12)),
      ),
    );
  }
}
