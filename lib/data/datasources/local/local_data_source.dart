import 'package:shared_preferences/shared_preferences.dart';

import 'secure.dart';
import 'shared_pref/shared_pref_datasource.dart';

final class LocalDataSource with SecureStorageMixin, SharedPref {
  LocalDataSource._();

  static Future<LocalDataSource> init() async {
    final SharedPreferences shPref = await SharedPreferences.getInstance();
    final local = LocalDataSource._();
    await local.initSecureStorage();
    await local.initPreferences(shPref);
    return local;
  }
}
