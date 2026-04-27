import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';
import 'package:data/entity/server_error/server_error.dart';

class AuthMockDataSource implements AuthDataSource {
  AuthMockDataSource({required TokenService tokenService}) : _tokenService = tokenService;

  final TokenService _tokenService;

  @override
  Future<Either<RemoteException, void>> logout() async {
    await _tokenService.deleteTokens();
    MockStorage.userProfile = null;
    return const Right(null);
  }

  @override
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone) async {
    await Future.delayed(const Duration(milliseconds: 250));
    return const Right(
      SignInResponseModel(message: 'Mock code sent. Use 0000.', expiresInSeconds: 300),
    );
  }

  @override
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code) async {
    await Future.delayed(const Duration(milliseconds: 250));

    if (code != '0000') {
      return const Left(
        RemoteException(
          kind: RemoteExceptionKind.serverDefined,
          serverError: ServerError(message: 'Неверный код. Для mock режима используйте 0000'),
        ),
      );
    }

    const user = UserData(
      id: 'mock-user-1',
      phone: '+7 927 777-77-77',
      role: "OWNER",
      isNewUser: true,
    );

    MockStorage.userProfile = user.toJson();
    await _tokenService.saveTokens('mock_access_token', 'mock_refresh_token');

    return Right(UserMapper.toModel(user));
  }
}
