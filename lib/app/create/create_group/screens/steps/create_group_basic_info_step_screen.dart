import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/create_group/widgets/group_age_value_chip.dart';
import 'package:roomate/app/create/create_group/widgets/group_participants_counter.dart';
import 'package:roomate/app/create/create_group/widgets/group_switch_row.dart';
import 'package:roomate/app/create/create_group/widgets/title.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupBasicInfoStepScreen extends ConsumerWidget {
  const CreateGroupBasicInfoStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final notifier = ref.read(groupFormProvider.notifier);
    final l10n = context.l10n;
    final rangeValues = RangeValues(form.ageFrom.toDouble(), form.ageTo.toDouble());

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.createGroupRoommateGender,
          options: options.lookingForGender,
          selectedIds: form.lookingForGenderId == 0 ? const {} : {form.lookingForGenderId},
          onSelectionChanged: (ids) {
            notifier.setLookingForGender(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.lookingForGenderError,
        ),
        const SizedBox(height: S.p12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(l10n.createGroupParticipantsTitle, style: context.typography.headline1),
                  const SizedBox(height: S.p8),
                  Text(
                    l10n.createGroupIncludingYou,
                    style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const P(vertical: S.p12),
              child: GroupParticipantsCounter(
                participantsCount: form.participantsCount,
                onMinusPressed: notifier.decrementParticipantsCount,
                onPlusPressed: notifier.incrementParticipantsCount,
              ),
            ),
          ],
        ),
        TitleWidget(l10n.age),
        Padding(
          padding: const P(vertical: S.p12),
          child: Row(
            children: [
              GroupAgeValueChip(value: form.ageFrom),
              Expanded(
                child: RangeSlider(
                  values: rangeValues,
                  min: 18,
                  max: 60,
                  divisions: 42,
                  activeColor: context.colors.orange,
                  inactiveColor: context.colors.opacityOrange20,
                  labels: RangeLabels('${form.ageFrom}', '${form.ageTo}'),
                  onChanged: (value) {
                    notifier.updateAgeRange(value.start.round(), value.end.round());
                  },
                ),
              ),
              GroupAgeValueChip(value: form.ageTo),
            ],
          ),
        ),
        const SizedBox(height: S.p12),
        TitleWidget(l10n.createGroupLivingRulesTitle),
        const SizedBox(height: S.p4),
        Text(
          l10n.createGroupLivingRulesHint,
          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
        ),
        const SizedBox(height: S.p4),
        Column(
          spacing: S.p4,
          children: [
            GroupSwitchRow(
              title: l10n.childrenAllowedFilter,
              value: form.childrenAllowed,
              onChanged: notifier.setChildrenAllowed,
            ),
            GroupSwitchRow(
              title: l10n.createGroupPartnerAllowed,
              value: form.partnerAllowed,
              onChanged: notifier.setPartnerAllowed,
            ),
            GroupSwitchRow(title: l10n.petsAllowedFilter, value: form.petsAllowed, onChanged: notifier.setPetsAllowed),
            GroupSwitchRow(
              title: l10n.createGroupSmokingAllowed,
              value: form.smokingAllowed,
              onChanged: notifier.setSmokingAllowed,
            ),
          ],
        ),
      ],
    );
  }
}
