import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final rangeValues = RangeValues(
      form.ageFrom.toDouble(),
      form.ageTo.toDouble(),
    );

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap(
          title: l10n.createGroupRoommateGender,
          options: options.lookingForGender,
          selectedIds: form.lookingForGenderId == 0
              ? const {}
              : {form.lookingForGenderId},
          onSelectionChanged: (ids) {
            notifier.setLookingForGender(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.lookingForGenderError,
        ),
        const SizedBox(height: S.p24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.createGroupParticipantsTitle,
                    style: context.typography.headline1,
                  ),
                  const SizedBox(height: S.p8),
                  Text(
                    l10n.createGroupIncludingYou,
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.graysText400,
                    ),
                  ),
                ],
              ),
            ),
            GroupParticipantsCounter(
              participantsCount: form.participantsCount,
              onMinusPressed: notifier.decrementParticipantsCount,
              onPlusPressed: notifier.incrementParticipantsCount,
            ),
          ],
        ),
        FieldErrorText(text: flow.participantsCountError),
        const SizedBox(height: S.p24),
        Text(l10n.age, style: context.typography.headline1),
        const SizedBox(height: S.p20),
        Row(
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
                  notifier.updateAgeRange(
                    value.start.round(),
                    value.end.round(),
                  );
                },
              ),
            ),
            GroupAgeValueChip(value: form.ageTo),
          ],
        ),
        const SizedBox(height: S.p24),
        Text(
          l10n.createGroupLivingRulesTitle,
          style: context.typography.headline1,
        ),
        const SizedBox(height: S.p8),
        Text(
          l10n.createGroupLivingRulesHint,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
        const SizedBox(height: S.p12),
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
        GroupSwitchRow(
          title: l10n.petsAllowedFilter,
          value: form.petsAllowed,
          onChanged: notifier.setPetsAllowed,
        ),
        GroupSwitchRow(
          title: l10n.createGroupSmokingAllowed,
          value: form.smokingAllowed,
          onChanged: notifier.setSmokingAllowed,
        ),
      ],
    );
  }
}

class GroupParticipantsCounter extends StatelessWidget {
  const GroupParticipantsCounter({
    super.key,
    required this.participantsCount,
    required this.onMinusPressed,
    required this.onPlusPressed,
  });

  final int participantsCount;
  final VoidCallback onMinusPressed;
  final VoidCallback onPlusPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p20),
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p12),
        child: Row(
          spacing: S.p16,
          children: [
            IconButton(
              onPressed: onMinusPressed,
              icon: const Icon(Icons.remove_rounded),
              color: context.colors.graysText400,
            ),
            Text('$participantsCount', style: context.typography.headline1),
            IconButton(
              onPressed: onPlusPressed,
              icon: const Icon(Icons.add_rounded),
              color: context.colors.lightOrange100,
            ),
          ],
        ),
      ),
    );
  }
}

class GroupAgeValueChip extends StatelessWidget {
  const GroupAgeValueChip({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p16),
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p12),
        child: Text(
          '$value',
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ),
    );
  }
}

class GroupSwitchRow extends StatelessWidget {
  const GroupSwitchRow({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p8),
      child: Row(
        children: [
          Expanded(child: Text(title, style: context.typography.headline2)),
          Switch.adaptive(
            value: value,
            activeTrackColor: context.colors.lightOrange100,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
