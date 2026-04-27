import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class IProfileRepository {
  Future<Either<RemoteException, ProfileModel>> createProfile(ProfileModel user);
  Future<Either<RemoteException, ProfileModel>> fetchProfile();
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags();
  Future<Either<RemoteException, void>> deleteProfile();
  Future<Either<RemoteException, void>> doVerification();
  Future<Either<RemoteException, ProfileModel>> updateProfile(ProfileModel user);
}
