import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/profile/providers/preference_tags_catalog_provider.dart';
import 'package:roomate/lib.dart';

part 'my_ad_application_detail_notifier.g.dart';

@riverpod
class MyAdApplicationDetail extends _$MyAdApplicationDetail {
  PreferenceTagsCatalogModel _tags = const PreferenceTagsCatalogModel();

  @override
  Future<AdApplicationDetailModel> build(String applicationId) async {
    final application = await ref.watch(
      applicationDetailForAdProvider(applicationId).future,
    );
    _tags = await ref.watch(preferenceTagsCatalogProvider.future);
    return application;
  }

  List<GroupPreferenceItemModel> personalQualities(TenantProfileModel profile) {
    return [
      ...resolvePreferenceItems(
        options: _tags.communication,
        selectedIds: profile.preferences.communication,
        title: ref.l10n.traitSociability,
      ),
      ...resolvePreferenceItems(
        options: _tags.sleep,
        selectedIds: profile.preferences.sleep,
        title: ref.l10n.traitSleepMode,
      ),
      ...resolvePreferenceItems(
        options: _tags.employment,
        selectedIds: profile.preferences.employment,
        title: ref.l10n.traitEmployment,
      ),
    ];
  }

  List<GroupPreferenceItemModel> householdHabits(TenantProfileModel profile) {
    return [
      ...resolvePreferenceItems(
        options: _tags.badHabits,
        selectedIds: profile.preferences.badHabits,
        title: ref.l10n.traitBadHabits,
      ),
      ...resolvePreferenceItems(
        options: _tags.guests,
        selectedIds: profile.preferences.guests,
        title: ref.l10n.traitGuestFrequency,
      ),
      ...resolvePreferenceItems(
        options: _tags.noiseLevel,
        selectedIds: profile.preferences.noiseLevel,
        title: ref.l10n.traitNoiseLevel,
      ),
      ...resolvePreferenceItems(
        options: _tags.cleaning,
        selectedIds: profile.preferences.cleaning,
        title: ref.l10n.traitCleaning,
      ),
    ];
  }

  List<GroupPreferenceItemModel> pets(TenantProfileModel profile) {
    return [
      ...resolvePreferenceItems(
        options: _tags.pets,
        selectedIds: profile.preferences.pets,
        title: ref.l10n.traitPets,
      ),
      ...resolvePreferenceItems(
        options: _tags.petsAttitude,
        selectedIds: profile.preferences.petsAttitude,
        title: ref.l10n.traitPetAttitude,
      ),
    ];
  }
}
