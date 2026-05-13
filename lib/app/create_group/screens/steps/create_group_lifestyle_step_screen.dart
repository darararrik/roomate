import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create_group/widgets/title.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupLifestyleStepScreen extends ConsumerWidget {
  const CreateGroupLifestyleStepScreen({super.key});

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
        TitleWidget(l10n.createGroupAtmosphereTitle),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            l10n.createGroupAtmosphereHint,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        const SizedBox(height: S.p12),
        ChipWrap<OptionModel>(
          title: l10n.traitNoiseLevel,
          options: options.noiseLevel,
          selectedIds: form.noiseLevelId == 0 ? const {} : {form.noiseLevelId},
          singleSelection: true,
          errorText: flow.noiseLevelError,
          onSelectionChanged: (ids) => notifier.setNoiseLevel(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),

        ChipWrap<OptionModel>(
          title: l10n.traitCleaning,
          options: options.cleaning,
          selectedIds: form.cleaningId == 0 ? const {} : {form.cleaningId},
          singleSelection: true,
          errorText: flow.cleaningError,
          onSelectionChanged: (ids) => notifier.setCleaning(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),

        ChipWrap<OptionModel>(
          title: l10n.traitPets,
          options: options.pets,
          selectedIds: form.petsId == 0 ? const {} : {form.petsId},
          singleSelection: true,
          errorText: flow.petsError,
          onSelectionChanged: (ids) => notifier.setPets(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),
        ChipWrap<OptionModel>(
          title: l10n.traitPetAttitude,
          options: options.petsAttitude,
          selectedIds: form.petsAttitudeId == 0 ? const {} : {form.petsAttitudeId},
          singleSelection: true,
          errorText: flow.petsAttitudeError,
          onSelectionChanged: (ids) => notifier.setPetsAttitude(ids.firstOrNull ?? 0),
        ),
      ],
    );
  }
}
