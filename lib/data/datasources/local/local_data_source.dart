// import 'package:shared_preferences/shared_preferences.dart';

import 'secure.dart';

// , SharedPref
final class LocalDataSource with SecureStorageMixin {
  LocalDataSource._();

  static Future<LocalDataSource> init() async {
    // final SharedPreferences shPref = await SharedPreferences.getInstance();
    final local = LocalDataSource._();
    await local.initSecureStorage();
    // await local.initPreferences(shPref);
    return local;
  }
}
