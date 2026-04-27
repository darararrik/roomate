import 'package:data/services/preferences_service.dart';

class AppStatusSnapshot {
  const AppStatusSnapshot({
    required this.hasCompletedForm,
    required this.hasCompletedProfile,
  });

  final bool hasCompletedForm;
  final bool hasCompletedProfile;
}

class AppStatusStorageService {
  AppStatusStorageService(this._preferencesService);

  static const _hasCompletedFormKey = 'has_completed_form';
  static const _hasCompletedProfileKey = 'has_completed_profile_details';

  final PreferencesService _preferencesService;

  Future<AppStatusSnapshot> read() async {
    final hasCompletedForm =
        await _preferencesService.getBool(_hasCompletedFormKey) ?? false;
    final hasCompletedProfile =
        await _preferencesService.getBool(_hasCompletedProfileKey) ?? false;

    return AppStatusSnapshot(
      hasCompletedForm: hasCompletedForm,
      hasCompletedProfile: hasCompletedProfile,
    );
  }

  Future<void> markLoggedOut() async {
    await _preferencesService.remove(_hasCompletedFormKey);
    await _preferencesService.remove(_hasCompletedProfileKey);
  }

  Future<void> markFormCompleted() async {
    await _preferencesService.setBool(_hasCompletedFormKey, true);
  }

  Future<void> markProfileCompleted() async {
    await _preferencesService.setBool(_hasCompletedFormKey, true);
    await _preferencesService.setBool(_hasCompletedProfileKey, true);
  }

  Future<void> markProfileIncomplete() async {
    await _preferencesService.setBool(_hasCompletedFormKey, false);
    await _preferencesService.remove(_hasCompletedProfileKey);
  }
}
