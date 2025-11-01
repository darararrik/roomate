import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin SecureStorageMixin {
  late final FlutterSecureStorage _storage;
  static const String _tokenKey = 'TOKEN';
  Future<void> initSecureStorage() async {
    _storage = const FlutterSecureStorage();
  }

  Future<void> saveToken(String value) => _storage.write(key: _tokenKey, value: value);

  Future<String?> getToken() => _storage.read(key: _tokenKey);

  Future<void> removeToken() => _storage.delete(key: _tokenKey);
}
