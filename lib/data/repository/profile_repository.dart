import 'package:dartz/dartz.dart';

import 'package:roomate/data/datasources/profile_data_source.dart';
import 'package:roomate/data/datasources/remote/mocks/profile_tags_mock_datasource.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/domain/repository/profile_repository.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({
    required ProfileDataSource remoteDataSource,
    required ProfileTagsMockDataSource tagsMockDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _tagsMockDataSource = tagsMockDataSource;
  final ProfileDataSource _remoteDataSource;
  final ProfileTagsMockDataSource _tagsMockDataSource;

  @override
  Future<Either<RemoteException, UserModel>> createProfile(
    UserModel user,
  ) async {
    try {
      final result = await _remoteDataSource.createProfile(user);
      return Right(result);
    } catch (e) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: e,
        ),
      );
    }
  }

  @override
  Future<Either<RemoteException, List<TagGroupModel>>>
  fetchTagsAboutSelf() async {
    try {
      final result = _tagsMockDataSource.fetchTagsAboutSelf();
      return Right(result);
    } catch (e) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: e,
        ),
      );
    }
  }

  @override
  Future<Either<RemoteException, UserModel>> fetchProfile() async {
    try {
      final result = await _remoteDataSource.fetchProfile();
      return Right(result);
    } catch (e) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: e,
        ),
      );
    }
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
  Future<Either<RemoteException, UserModel>> updateProfile(
    UserModel user,
  ) async {
    try {
      final result = await _remoteDataSource.updateProfile(user);
      return Right(result);
    } catch (e) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: e,
        ),
      );
    }
  }
}
