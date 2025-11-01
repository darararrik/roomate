import 'package:shared_preferences/shared_preferences.dart';

import 'preference.dart';

base mixin SharedPref {
  Future<void> initPreferences(SharedPreferences shP) async {
    return;
  }

  late final Preference<String> token;
}
