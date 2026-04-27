import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({required ProfileDataSource dataSource}) : _dataSource = dataSource;
  final ProfileDataSource _dataSource;

  @override
  Future<Either<RemoteException, ProfileModel>> createProfile(ProfileModel user) async {
    return _dataSource.createProfile(user);
  }

  @override
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags() async {
    return _dataSource.fetchPreferencesTags();
  }

  @override
  Future<Either<RemoteException, ProfileModel>> fetchProfile() async {
    return _dataSource.fetchProfile();
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
  Future<Either<RemoteException, ProfileModel>> updateProfile(ProfileModel user) async {
    return _dataSource.updateProfile(user);
  }
}
