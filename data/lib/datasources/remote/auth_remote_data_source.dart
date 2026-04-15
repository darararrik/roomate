import 'package:dartz/dartz.dart';
import 'package:data/lib.dart';
import 'package:data/services/token_service.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class AuthRemoteDataSource implements AuthDataSource {
  AuthRemoteDataSource({required ApiClient client, required TokenService tokenService})
    : _client = client,
      _tokenService = tokenService;
  final ApiClient _client;
  final TokenService _tokenService;

  @override
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code) async {
    try {
      final result = await _client.post(
        ApiUrlConstants.verifySms,
        body: {'phone': phone, 'code': code},
        transformer: (json) => AuthResponseData.fromJson(json),
      );
      final user = UserMapper.toModel(result.user);
      await _saveTokens(result.accessToken!, result.refreshToken!);

      return Right(user);
    } on RemoteException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.unknown, rootException: e));
    }
  }

  @override
  Future<Either<RemoteException, void>> logout() async {
    try {
      await _client.post(
        ApiUrlConstants.logout,
        needAuth: true, // Логаут обычно требует JWT
        // Если сервер возвращает пустой ответ, трансформер может просто вернуть null
        transformer: (json) => null,
      );
      return const Right(null);
    } on RemoteException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.unknown, rootException: e));
    }
  }

  @override
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone) async {
    try {
      final result = await _client.post(
        ApiUrlConstants.signInByPhone,
        body: {'phone': phone},
        // Если сервер возвращает статус успеха
        transformer: (json) => SignInResponseData.fromJson(json),
      );
      final model = SingInResponseMapper.toModel(result);
      return Right(model);
    } on RemoteException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.unknown, rootException: e));
    }
  }

  @override
  Future<Either<RemoteException, bool>> refreshToken(String refreshToken) async {
    // Реализация аналогична...
    throw UnimplementedError();
  }

  Future<void> _saveTokens(String accessToken, String refreshToken) async {
    await _tokenService.saveTokens(accessToken, refreshToken);
  }
}
