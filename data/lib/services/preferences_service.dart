import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  SharedPreferencesAsync get _prefs => SharedPreferencesAsync();

  Future<bool?> getBool(String key) => _prefs.getBool(key);

  Future<void> setBool(String key, bool value) => _prefs.setBool(key, value);

  Future<void> remove(String key) => _prefs.remove(key);
}
