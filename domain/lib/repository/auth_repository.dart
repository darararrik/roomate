import 'package:dartz/dartz.dart';
import 'package:domain/lib.dart';
import 'package:shared/shared.dart';

abstract interface class AuthRepository {
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone);
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code);
  Future<Either<RemoteException, void>> logout();
}
