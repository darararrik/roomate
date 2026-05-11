import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

abstract interface class IProfileRepository {
  Future<Either<RemoteException, ProfileModel>> updateProfile(
    ProfileModel user,
  );
  Future<Either<RemoteException, ProfileModel>> fetchProfile();
  Future<Either<RemoteException, PreferenceTagsCatalogModel>>
  fetchPreferenceTagsCatalog();
  Future<Either<RemoteException, void>> deleteProfile();
  Future<Either<RemoteException, void>> doVerification();
}
