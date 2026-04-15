import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/lib.dart';

class AuthRemoteDataSource implements AuthDataSource {
  AuthRemoteDataSource({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code) async {
    try {
      final result = await _client.post(
        ApiUrlConstants.verifySms,
        body: {'phone': phone, 'code': code},
        transformer: (json) => UserData.fromJson(json as Map<String, dynamic>),
      );
      final user = UserMapper.toModel(result);
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
}
