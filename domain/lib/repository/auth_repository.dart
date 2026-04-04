import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class AuthRepository {
  Future<Either<RemoteException, UserModel>> login(String phoneNumber);
  Future<Either<RemoteException, UserModel>> verifyCode(String code);
  Future<Either<RemoteException, void>> logout();
}
