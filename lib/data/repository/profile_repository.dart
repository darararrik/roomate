import 'package:dartz/dartz.dart';

import 'package:roomate/data/datasources/profile_data_source.dart';
import 'package:roomate/data/datasources/static/profile_static_datasource.dart';
import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/models/user_model.dart';
import 'package:roomate/domain/repository/profile_repository.dart';
import 'package:roomate/shared/exception/RemoteException.dart';

class ProfileRepository implements IProfileRepository {
  ProfileRepository({required ProfileDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final ProfileDataSource _remoteDataSource;

  @override
  Future<Either<RemoteException, UserModel>> createProfile(
    String firstName,
    String lastName,
    String avatarUrl,
    GenderEnum gender,
    int age,
    List<TagModel> tags,
  ) async {
    try {
      final userModel = UserModel(
        firstName: firstName,
        lastName: lastName,
        avatarUrl: avatarUrl,
        gender: gender,
        age: age,
        tags: tags,
      );
      final result = await _remoteDataSource.createProfile(userModel);
      return Right(result);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.serverUndefined, rootException: e));
    }
  }

  @override
  Future<Either<RemoteException, List<TagGroupModel>>> fetchTagsAboutSelf() async {
    try {
      // Для начала возвращаем статические данные из дизайна
      final result = ProfileStaticDataSource.getStaticTags();
      return Right(result);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.serverUndefined, rootException: e));
    }
  }

  @override
  Future<Either<RemoteException, UserModel>> fetchProfile() async {
    try {
      final result = await _remoteDataSource.fetchProfile();
      return Right(result);
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.serverUndefined, rootException: e));
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
}
