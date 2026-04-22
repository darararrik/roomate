import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({required ProfileDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final ProfileDataSource _remoteDataSource;

  @override
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user) async {
    return _remoteDataSource.createProfile(user);
  }

  @override
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags() async {
    return _remoteDataSource.fetchPreferencesTags();
  }

  @override
  Future<Either<RemoteException, UserModel>> fetchProfile() async {
    return _remoteDataSource.fetchProfile();
  }

  @override
  Future<Either<RemoteException, void>> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<RemoteException, void>> doVerification() {
    // TODO: implement doVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<RemoteException, UserModel>> updateProfile(UserModel user) async {
    return _remoteDataSource.updateProfile(user);
  }
}
