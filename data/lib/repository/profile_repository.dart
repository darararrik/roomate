import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({required ProfileDataSource dataSource}) : _dataSource = dataSource;
  final ProfileDataSource _dataSource;

  @override
  Future<Either<RemoteException, PreferenceTagsCatalogModel>> fetchPreferenceTagsCatalog() async {
    return _dataSource.fetchPreferenceTagsCatalog();
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
