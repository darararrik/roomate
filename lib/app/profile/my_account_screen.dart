import 'package:auto_route/auto_route.dart';
import 'package:domain/models/common/option_model.dart';
import 'package:domain/models/preferences_tags/preference_tags_catalog_model.dart';
import 'package:domain/models/preferences_tags/selected_user_preferences_model.dart';
import 'package:domain/models/profile/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/profile/providers/providers.dart';
import 'package:roomate/routing/app_routing.gr.dart';

import '../../lib.dart';

@RoutePage()
class MyAccountScreen extends ConsumerWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalProfileProvider);
    final preferenceTagsCatalogState = ref.watch(preferenceTagsCatalogProvider);

    return Scaffold(
      body: state.when(
        data: (data) => preferenceTagsCatalogState.when(
          data: (catalog) => _data(context, ref, data, catalog),
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
    final profileNotifier = ref.read(globalProfileProvider.notifier);

    return CustomScrollView(
      slivers: [
        AB(
          title: Text(context.l10n.profile, style: context.typography.headline1),
          centerTitle: false,
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16, vertical: S.p24),
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const P(right: S.p12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: P(vertical: S.p4, horizontal: S.p12),
                    child: CircleAvatar(radius: S.p26),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${profile.firstName} ${profile.lastName}",
                          style: context.typography.bodyTitle,
                        ),
                        const SizedBox(height: S.p8),
                        Text(
                          profile.phone,
                          style: context.typography.bodyDescription.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: S.p4),
                  InkWell(
                    onTap: () => context.pushRoute(const ProfileDataEditRoute()),
                    child: Padding(
                      padding: const P(all: S.p4),
                      child: AppIcon(AppIcons.edit, color: context.colors.lightOrange100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16),
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
                  value: profileNotifier.preferenceTitle(
                    catalog.communication,
                    preferences.communication,
                  ),

                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(catalog.sleep, preferences.sleep),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(
                    catalog.employment,
                    preferences.employment,
                  ),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(catalog.badHabits, preferences.badHabits),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(catalog.guests, preferences.guests),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(
                    catalog.noiseLevel,
                    preferences.noiseLevel,
                  ),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  value: profileNotifier.preferenceTitle(catalog.cleaning, preferences.cleaning),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  iconPath: AppIcons.animal,
                  title: context.l10n.traitPets,
                  value: profileNotifier.preferenceTitle(catalog.pets, preferences.pets),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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
                  iconPath: AppIcons.animal,
                  title: context.l10n.traitPetAttitude,
                  value: profileNotifier.preferenceTitle(
                    catalog.petsAttitude,
                    preferences.petsAttitude,
                  ),
                  onTap: () => _showPreferenceBottomSheet(
                    context,
                    _PreferenceSheetConfig(
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

  void _showPreferenceBottomSheet(BuildContext context, _PreferenceSheetConfig config) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => _PreferenceBottomSheet(config: config),
    );
  }

  void _showPlaceholderBottomSheet(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) => _PlaceholderBottomSheet(title: title),
    );
  }
}

class _PreferenceSheetConfig {
  const _PreferenceSheetConfig({
    required this.title,
    required this.options,
    required this.selectedIds,
    required this.isMulti,
    required this.updatePreferences,
  });

  final String title;
  final List<OptionModel> options;
  final List<int> selectedIds;
  final bool isMulti;
  final SelectedUserPreferencesModel Function(
    SelectedUserPreferencesModel preferences,
    List<int> selectedIds,
  )
  updatePreferences;
}

class _PreferenceBottomSheet extends HookConsumerWidget {
  const _PreferenceBottomSheet({required this.config});

  final _PreferenceSheetConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIds = useState<Set<int>>(config.selectedIds.toSet());
    final isSaving = useState(false);
    final isScrollable = config.options.length > 8;

    return BaseBottomSheet(
      title: config.title,
      child: Padding(
        padding: const P(horizontal: S.p24, bottom: S.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isScrollable)
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
                child: SingleChildScrollView(
                  child: _PreferenceOptionsList(
                    options: config.options,
                    selectedIds: selectedIds.value,
                    isMulti: config.isMulti,
                    onChanged: (ids) => selectedIds.value = ids,
                  ),
                ),
              )
            else
              _PreferenceOptionsList(
                options: config.options,
                selectedIds: selectedIds.value,
                isMulti: config.isMulti,
                onChanged: (ids) => selectedIds.value = ids,
              ),
            const SizedBox(height: S.p24),
            PrimaryButton(
              text: isSaving.value ? 'Сохраняем...' : context.l10n.save,
              onPressed: isSaving.value
                  ? null
                  : () async {
                      isSaving.value = true;
                      final currentPreferences =
                          ref.read(globalProfileProvider).value?.preferences ??
                          const SelectedUserPreferencesModel();
                      final updatedPreferences = config.updatePreferences(
                        currentPreferences,
                        selectedIds.value.toList(),
                      );
                      final isSaved = await ref
                          .read(globalProfileProvider.notifier)
                          .updatePreferences(updatedPreferences);

                      if (!context.mounted) return;

                      isSaving.value = false;
                      if (isSaved) {
                        Navigator.of(context).pop();
                      }
                    },
            ),
          ],
        ),
      ),
    );
  }
}

class _PlaceholderBottomSheet extends StatelessWidget {
  const _PlaceholderBottomSheet({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: title,
      child: Padding(
        padding: const P(horizontal: S.p24, bottom: S.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Редактирование этого пункта будет добавлено позже',
              textAlign: TextAlign.center,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
            const SizedBox(height: S.p24),
            PrimaryButton(text: context.l10n.apply, onPressed: () => Navigator.of(context).pop()),
          ],
        ),
      ),
    );
  }
}

class _PreferenceOptionsList extends StatelessWidget {
  const _PreferenceOptionsList({
    required this.options,
    required this.selectedIds,
    required this.isMulti,
    required this.onChanged,
  });

  final List<OptionModel> options;
  final Set<int> selectedIds;
  final bool isMulti;
  final ValueChanged<Set<int>> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final option in options)
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (option.isDisabled) return;

              final isSelected = selectedIds.contains(option.id);
              final nextIds = Set<int>.from(selectedIds);

              if (isMulti) {
                isSelected ? nextIds.remove(option.id) : nextIds.add(option.id);
              } else {
                nextIds
                  ..clear()
                  ..addAll(isSelected ? const <int>[] : [option.id]);
              }

              onChanged(nextIds);
            },
            child: Padding(
              padding: const P(bottom: S.p12),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(S.p12),
                  color: context.colors.graysWhite,
                  border: Border.all(
                    color: selectedIds.contains(option.id)
                        ? context.colors.lightOrange100
                        : context.colors.graysStroke300,
                  ),
                ),

                child: Padding(
                  padding: const P(vertical: S.p12, left: S.p32, right: S.p16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const P(vertical: S.p12),
                          child: Text(option.title, style: context.typography.bodyDescription),
                        ),
                      ),
                      SelectionButton(
                        isSelected: selectedIds.contains(option.id),
                        isRadio: !isMulti,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
