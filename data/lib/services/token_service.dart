import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenService {
  TokenService({required String namespace}) : _namespace = namespace;

  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final String _namespace;

  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';

  String _key(String key) => '$_namespace.$key';

  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: _key(_accessTokenKey), value: accessToken);
    await _storage.write(key: _key(_refreshTokenKey), value: refreshToken);
  }

  Future<String?> getAccessToken() async {
    try {
      return await _storage.read(key: _key(_accessTokenKey));
    } catch (e) {
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    try {
      return await _storage.read(key: _key(_refreshTokenKey));
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteTokens() async {
    await _storage.delete(key: _key(_accessTokenKey));
    await _storage.delete(key: _key(_refreshTokenKey));
  }
}
