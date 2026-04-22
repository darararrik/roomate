import 'package:dartz/dartz.dart';
import 'package:data/lib.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({
    required ProfileDataSource remoteDataSource,
    required ProfileTagsMockDataSource tagsMockDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _tagsMockDataSource = tagsMockDataSource;
  final ProfileDataSource _remoteDataSource;
  final ProfileTagsMockDataSource _tagsMockDataSource;

  @override
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user) async {
    return _remoteDataSource.createProfile(user);
  }

  @override
  Future<Either<RemoteException, List<TagGroupModel>>> fetchTagsAboutSelf() async {
    return _remoteDataSource.fetchTagsAboutSelf();
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
