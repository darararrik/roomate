import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/user_preferences/notifier/user_pref_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class UserPreferencesLifestyleScreen extends ConsumerWidget {
  const UserPreferencesLifestyleScreen({super.key, required this.tags});

  final PreferencesTagsModel tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userPrefProvider);
    final notifier = ref.read(userPrefProvider.notifier);

    return _PreferencesContent(
      title: context.l10n.preferencesLifestyleTitle,
      children: [
        ChipWrap<OptionModel>(
          title: context.l10n.traitSociability,
          options: tags.communication,
          selectedIds: {if (state.communcationId != 0) state.communcationId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setCommunicationId(ids.firstOrNull ?? 0),
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitSleepMode,
          options: tags.sleep,
          selectedIds: {if (state.sleepId != 0) state.sleepId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setSleepId(ids.firstOrNull ?? 0),
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitEmployment,
          options: tags.employment,
          selectedIds: state.employmentId,
          onSelectionChanged: notifier.setEmploymentIds,
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitBadHabits,
          options: tags.badHabits,
          selectedIds: state.badHabitsId,
          onSelectionChanged: notifier.setBadHabitsIds,
        ),
      ],
    );
  }
}

@RoutePage()
class UserPreferencesHouseholdScreen extends ConsumerWidget {
  const UserPreferencesHouseholdScreen({super.key, required this.tags});

  final PreferencesTagsModel tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userPrefProvider);
    final notifier = ref.read(userPrefProvider.notifier);

    return _PreferencesContent(
      title: context.l10n.preferencesHouseholdTitle,
      children: [
        ChipWrap<OptionModel>(
          title: context.l10n.traitGuestFrequency,
          options: tags.guests,
          selectedIds: {if (state.guestsId != 0) state.guestsId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setGuestsId(ids.firstOrNull ?? 0),
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitNoiseLevel,
          options: tags.noiseLevel,
          selectedIds: {if (state.noiseLevelId != 0) state.noiseLevelId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setNoiseLevelId(ids.firstOrNull ?? 0),
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitCleaning,
          options: tags.cleaning,
          selectedIds: {if (state.cleaningId != 0) state.cleaningId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setCleaningId(ids.firstOrNull ?? 0),
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitPets,
          options: tags.pets,
          selectedIds: state.petsId,
          onSelectionChanged: notifier.setPetsIds,
        ),
        ChipWrap<OptionModel>(
          title: context.l10n.traitPetAttitude,
          options: tags.petsAttitude,
          selectedIds: {if (state.petsAttitudeId != 0) state.petsAttitudeId},
          singleSelection: true,
          onSelectionChanged: (ids) =>
              notifier.setPetsAttitudeId(ids.firstOrNull ?? 0),
        ),
      ],
    );
  }
}

class _PreferencesContent extends StatelessWidget {
  const _PreferencesContent({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const P(horizontal: S.p16, bottom: S.p60),
      children: [
        Padding(
          padding: const P(vertical: S.p28),
          child: Column(
            spacing: S.p8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: context.typography.headline1),
              Text(
                context.l10n.tellUsAboutYourselfSubtitle,
                textAlign: .center,
                style: context.typography.headline2.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        ...children.separated(const SizedBox(height: S.p12)),
      ],
    );
  }
}
