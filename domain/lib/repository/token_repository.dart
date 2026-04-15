abstract class ITokenRepository {
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> deleteToken();
}
