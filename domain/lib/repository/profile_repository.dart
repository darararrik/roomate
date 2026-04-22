import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

abstract interface class IProfileRepository {
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user);
  Future<Either<RemoteException, UserModel>> fetchProfile();
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags();
  Future<Either<RemoteException, void>> deleteProfile();
  Future<Either<RemoteException, void>> doVerification();
  Future<Either<RemoteException, UserModel>> updateProfile(UserModel user);
}
