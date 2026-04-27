import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class ProfileMockDataSource implements ProfileDataSource {
  @override
  Future<Either<RemoteException, ProfileModel>> createProfile(ProfileModel user) async {
    final json = ProfileMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return Right(await user.withDelay(milliseconds: 0));
  }

  @override
  Future<Either<RemoteException, ProfileModel>> fetchProfile() async {
    final json = MockStorage.userProfile;
    if (json == null) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: Exception("User not found"),
        ),
      );
    }
    return Right(await ProfileMapper.toModel(ProfileData.fromJson(json)).withDelay());
  }

  @override
  Future<Either<RemoteException, ProfileModel>> updateProfile(ProfileModel user) async {
    final json = ProfileMapper.toData(user).toJson();
    MockStorage.userProfile = json;
    return Right(await user.withDelay());
  }

  @override
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags() async {
    return const Right(PreferencesTagsModel());
  }
}
