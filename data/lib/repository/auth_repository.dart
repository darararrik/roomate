import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/datasources/auth_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);
  final AuthDataSource _dataSource;

  @override
  Future<Either<RemoteException, SignInResponseModel>> signInByPhone(String phone) =>
      _dataSource.signInByPhone(phone);

  @override
  Future<Either<RemoteException, UserModel>> verifySms(String phone, String code) =>
      _dataSource.verifySms(phone, code);

  @override
  Future<Either<RemoteException, void>> logout() => _dataSource.logout();
}
