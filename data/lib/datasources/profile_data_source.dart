import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class ProfileDataSource {
  Future<Either<RemoteException, ProfileModel>> fetchProfile();
  Future<Either<RemoteException, ProfileModel>> updateProfile(
    ProfileModel user,
  );
  Future<Either<RemoteException, PreferenceTagsCatalogModel>>
  fetchPreferenceTagsCatalog();
}
