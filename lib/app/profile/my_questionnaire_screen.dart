import 'package:auto_route/auto_route.dart';
import 'package:domain/models/preferences_tags/preference_tags_catalog_model.dart';
import 'package:domain/models/profile/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/profile/providers/providers.dart';
import 'package:roomate/app/profile/widgets/placeholder_bottom_sheet.dart';
import 'package:roomate/app/profile/widgets/preference_bottom_sheet.dart';
import 'package:roomate/app/profile/widgets/preference_sheet_config.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class MyQuestionnaireScreen extends ConsumerWidget {
  const MyQuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalProfileProvider);
    final preferenceTagsCatalogState = ref.watch(preferenceTagsCatalogProvider);

    return Scaffold(
      body: state.when(
        data: (profile) => preferenceTagsCatalogState.when(
          data: (catalog) => _data(context, ref, profile, catalog),
          error: (e, stacktrace) => ErrorView(error: e.toString()),
          loading: () => const LoadingWidget(),
        ),
        error: (e, stacktrace) => ErrorView(error: e.toString()),
        loading: () => const LoadingWidget(),
      ),
    );
  }

  CustomScrollView _data(
    BuildContext context,
    WidgetRef ref,
    ProfileModel profile,
    PreferenceTagsCatalogModel catalog,
  ) {
    final preferences = profile.preferences;
    final notifier = ref.read(globalProfileProvider.notifier);

    return CustomScrollView(
      slivers: [
        AB(
          title: Text(context.l10n.myProfile, style: context.typography.headline1),
          centerTitle: false,
          pinned: true,
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16, vertical: S.p24),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: S.p8, vertical: S.p4),
                  child: Text(context.l10n.basicSection, style: context.typography.headline2),
                ),
                ProfileListItem(
                  iconPath: AppIcons.flash,
                  title: context.l10n.traitSociability,
                  value: notifier.preferenceTitle(catalog.communication, preferences.communication),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitSociability,
                      options: catalog.communication,
                      selectedIds: preferences.communication,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(communication: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.sleep,
                  title: context.l10n.traitSleepMode,
                  value: notifier.preferenceTitle(catalog.sleep, preferences.sleep),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitSleepMode,
                      options: catalog.sleep,
                      selectedIds: preferences.sleep,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(sleep: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.build,
                  title: context.l10n.traitEmployment,
                  value: notifier.preferenceTitle(catalog.employment, preferences.employment),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitEmployment,
                      options: catalog.employment,
                      selectedIds: preferences.employment,
                      isMulti: true,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(employment: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.drink,
                  title: context.l10n.traitBadHabits,
                  value: notifier.preferenceTitle(catalog.badHabits, preferences.badHabits),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitBadHabits,
                      options: catalog.badHabits,
                      selectedIds: preferences.badHabits,
                      isMulti: true,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(badHabits: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.people,
                  title: context.l10n.traitGuestFrequency,
                  value: notifier.preferenceTitle(catalog.guests, preferences.guests),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitGuestFrequency,
                      options: catalog.guests,
                      selectedIds: preferences.guests,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(guests: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.flash,
                  title: context.l10n.traitNoiseLevel,
                  value: notifier.preferenceTitle(catalog.noiseLevel, preferences.noiseLevel),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitNoiseLevel,
                      options: catalog.noiseLevel,
                      selectedIds: preferences.noiseLevel,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(noiseLevel: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.trash,
                  title: context.l10n.traitCleaning,
                  value: notifier.preferenceTitle(catalog.cleaning, preferences.cleaning),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitCleaning,
                      options: catalog.cleaning,
                      selectedIds: preferences.cleaning,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(cleaning: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.animals,
                  title: context.l10n.traitPets,
                  value: notifier.preferenceTitle(catalog.pets, preferences.pets),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitPets,
                      options: catalog.pets,
                      selectedIds: preferences.pets,
                      isMulti: true,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(pets: selectedIds),
                    ),
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.animals,
                  title: context.l10n.traitPetAttitude,
                  value: notifier.preferenceTitle(catalog.petsAttitude, preferences.petsAttitude),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    PreferenceSheetConfig(
                      title: context.l10n.traitPetAttitude,
                      options: catalog.petsAttitude,
                      selectedIds: preferences.petsAttitude,
                      isMulti: false,
                      updatePreferences: (preferences, selectedIds) =>
                          preferences.copyWith(petsAttitude: selectedIds),
                    ),
                  ),
                ),
              ].separated(const SizedBox(height: S.p8)),
            ),
          ),
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16, vertical: S.p24),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: S.p8, vertical: S.p4),
                  child: Text(
                    context.l10n.roommateSearchSection,
                    style: context.typography.headline2,
                  ),
                ),
                ProfileListItem(
                  iconPath: AppIcons.male,
                  title: context.l10n.traitGender,
                  value: 'Не выбран',
                  onTap: () => _showPlaceholderBottomSheet(context, context.l10n.traitGender),
                ),
                ProfileListItem(
                  iconPath: AppIcons.cake,
                  title: context.l10n.traitAge,
                  value: 'Не выбраны',
                  onTap: () => _showPlaceholderBottomSheet(context, context.l10n.traitAge),
                ),
              ].separated(const SizedBox(height: S.p8)),
            ),
          ),
        ),
      ],
    );
  }

  void _showPreferenceBottomSheet(BuildContext context, PreferenceSheetConfig config) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => PreferenceBottomSheet(config: config),
    );
  }

  void _showPlaceholderBottomSheet(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => PlaceholderBottomSheet(title: title),
    );
  }
}
