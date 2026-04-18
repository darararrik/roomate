import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class AuthDataSource {
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone);
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code);
  Future<Either<RemoteException, void>> logout();
}
