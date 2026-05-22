import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/create_group/widgets/title.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupLookingForStepScreen extends ConsumerWidget {
  const CreateGroupLookingForStepScreen({super.key});

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
        TitleWidget(l10n.createGroupLookingForTitle),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            l10n.createGroupLookingForHint,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        const SizedBox(height: S.p12),
        ChipWrap<OptionModel>(
          title: l10n.traitSociability,
          options: options.communication,
          selectedIds: form.communicationId == 0 ? const {} : {form.communicationId},
          singleSelection: true,
          errorText: flow.communicationError,
          onSelectionChanged: (ids) => notifier.setCommunication(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),

        ChipWrap<OptionModel>(
          title: l10n.traitBadHabits,
          options: options.badHabits,
          selectedIds: form.badHabitsId == 0 ? const {} : {form.badHabitsId},
          singleSelection: true,
          errorText: flow.badHabitsError,
          onSelectionChanged: (ids) => notifier.setBadHabits(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),

        ChipWrap<OptionModel>(
          title: l10n.traitGuestFrequency,
          options: options.guests,
          selectedIds: form.guestsId == 0 ? const {} : {form.guestsId},
          singleSelection: true,
          errorText: flow.guestsError,
          onSelectionChanged: (ids) => notifier.setGuests(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),
        ChipWrap<OptionModel>(
          title: l10n.traitSleepMode,
          options: options.sleep,
          selectedIds: form.sleepId == 0 ? const {} : {form.sleepId},
          singleSelection: true,
          errorText: flow.sleepError,
          onSelectionChanged: (ids) => notifier.setSleep(ids.firstOrNull ?? 0),
        ),
      ],
    );
  }
}
