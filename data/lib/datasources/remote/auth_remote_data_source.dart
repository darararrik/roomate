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
    final result = await _client.post(
      ApiUrlConstants.verifySms,
      body: {'phone': phone, 'code': code},
      transformer: (json) => AuthResponseData.fromJson(json),
    );

    return result.fold((exception) => Left(exception), (data) async {
      final user = UserMapper.toModel(data.user);
      await _saveTokens(data.accessToken!, data.refreshToken!);
      return Right(user);
    });
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
