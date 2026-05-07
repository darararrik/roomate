import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class AuthRemoteDataSource implements AuthDataSource {
  AuthRemoteDataSource({required ApiClient client, required TokenService tokenService})
    : _client = client,
      _tokenService = tokenService;
  final ApiClient _client;
  final TokenService _tokenService;

  @override
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code) async {
    final result = await _client.post(
      ApiUrlConstants.verifySms,
      body: {'phone': phone, 'code': code},
      transformer: (json) => AuthResponseData.fromJson(json),
    );

    return result.fold((exception) => Left(exception), (data) async {
      final user = UserMapper.toModel(data.user!);
      await _saveTokens(data.accessToken!, data.refreshToken!);
      return Right(user);
    });
  }

  @override
  Future<Either<RemoteException, void>> logout() async {
    final result = await _client.post<void>(
      ApiUrlConstants.logout,
      needAuth: true,
      body: {'refreshToken': _tokenService.getRefreshToken()},
      transformer: (_) {},
    );

    await _tokenService.deleteTokens();

    return result;
  }

  @override
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone) async {
    final result = await _client.post<SignInResponseData>(
      ApiUrlConstants.signInByPhone,
      body: {'phone': phone},
      transformer: (json) => SignInResponseData.fromJson(json),
    );

    return result.fold((error) => Left(error), (data) {
      final model = SingInResponseMapper.toModel(data);
      return Right(model);
    });
  }

  Future<void> _saveTokens(String accessToken, String refreshToken) async {
    await _tokenService.saveTokens(accessToken, refreshToken);
  }
}
