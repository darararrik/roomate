import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
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
    final data = ref.watch(categoriesProvider(SelectionStepKey.propertiesApartment));

    return data.when(
      data: (data) => Padding(
        padding: const P(bottom: S.p20),
        child: ListView(
          padding: const P(horizontal: S.p16),
          children: [
            // SelectableTagGroup(tags: data.first),
            // TextFieldWithTitle.withSuffix(
            //   title: context.l10n.apartmentArea,
            //   hintText: context.l10n.enterApartmentArea,
            //   controller: areaController,
            //   suffix: context.l10n.squareMeters,
            // ),
            // SelectableTagGroup(tags: data[1]),
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
      ),
      error: (Object error, StackTrace stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const LoadingState();
      },
    );
  }
}
