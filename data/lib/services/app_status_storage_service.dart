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
  AppStatusStorageService(this._preferencesService, {required String namespace})
    : _namespace = namespace;

  static const _hasCompletedFormKey = 'has_completed_form';
  static const _hasCompletedProfileKey = 'has_completed_profile_details';

  final PreferencesService _preferencesService;
  final String _namespace;

  String _key(String key) => '$_namespace.$key';

  Future<AppStatusSnapshot> read() async {
    final hasCompletedForm =
        await _preferencesService.getBool(_key(_hasCompletedFormKey)) ?? false;
    final hasCompletedProfile =
        await _preferencesService.getBool(_key(_hasCompletedProfileKey)) ??
        false;

    return AppStatusSnapshot(
      hasCompletedForm: hasCompletedForm,
      hasCompletedProfile: hasCompletedProfile,
    );
  }

  Future<void> markLoggedOut() async {
    await _preferencesService.remove(_key(_hasCompletedFormKey));
    await _preferencesService.remove(_key(_hasCompletedProfileKey));
  }

  Future<void> markFormCompleted() async {
    await _preferencesService.setBool(_key(_hasCompletedFormKey), true);
  }

  Future<void> markProfileCompleted() async {
    await _preferencesService.setBool(_key(_hasCompletedFormKey), true);
    await _preferencesService.setBool(_key(_hasCompletedProfileKey), true);
  }

  Future<void> markProfileIncomplete() async {
    await _preferencesService.setBool(_key(_hasCompletedFormKey), false);
    await _preferencesService.remove(_key(_hasCompletedProfileKey));
  }
}
