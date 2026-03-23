import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class InputDetailsApStepScreen extends HookConsumerWidget {
  const InputDetailsApStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final areaController = useTextEditingController();
    final floorController = useTextEditingController();
    final totalFloorsController = useTextEditingController();
    final notifier = ref.read(createAdProvider.notifier);
    final data = ref.watch(createAdProvider.select((s) => s.propertiesApartmentTags));

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        SelectableTagGroup(
          tagsGroup: data.first,
          isRadio: true,
          onTagSelected: (tag, isSelected) => notifier.updatePropertiesApartmentTags(
            categoryTitle: data.first.groupTitle,
            tag: tag.title,
            isSelected: isSelected,
          ),
        ),
        TextFieldWithTitle.withSuffix(
          title: context.l10n.apartmentArea,
          hintText: context.l10n.enterApartmentArea,
          controller: areaController,
          suffix: context.l10n.squareMeters,
          onChanged: (value) => notifier.updateApartmentArea(value),
          needSuffixIcon: false,
        ),
        SelectableTagGroup(
          tagsGroup: data[1],
          isRadio: true,
          onTagSelected: (tag, isSelected) => notifier.updatePropertiesApartmentTags(
            categoryTitle: data[1].groupTitle,
            tag: tag.title,
            isSelected: isSelected,
          ),
        ),
        TextFieldWithTitle.number(
          title: context.l10n.floor,
          hintText: context.l10n.enterFloor,
          controller: floorController,
          onChanged: (value) => notifier.updateFloor(value),
        ),
        TextFieldWithTitle.number(
          title: context.l10n.floorsInBuilding,
          hintText: context.l10n.numberOfFloors,
          controller: totalFloorsController,
          onChanged: (value) => notifier.updateTotalFloors(value),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
