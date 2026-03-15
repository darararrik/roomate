import 'package:dartz/dartz.dart';

import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

abstract interface class AuthRepository {
  Future<Either<RemoteException, UserModel>> login(String phoneNumber);
  Future<Either<RemoteException, UserModel>> verifyCode(String code);
  Future<Either<RemoteException, void>> logout();
}
