import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class ProfileRemoteDataSource implements ProfileDataSource {
  ProfileRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, UserModel>> fetchProfile() async {
    final result = await _client.get<UserData>(
      ApiUrlConstants.me,
      needAuth: true,
      transformer: (json) => UserData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(UserMapper.toModel(u)));
  }

  @override
  Future<Either<RemoteException, UserModel>> createProfile(UserModel user) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RemoteException, UserModel>> updateProfile(UserModel user) async {
    final result = await _client.put<UserData>(
      ApiUrlConstants.me,
      needAuth: true,
      body: UserMapper.toData(user).toJson(),
      transformer: (json) => UserData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(UserMapper.toModel(u)));
  }

  @override
  Future<Either<RemoteException, PreferencesTagsModel>> fetchPreferencesTags() async {
    final result = await _client.get(
      ApiUrlConstants.me,
      needAuth: true,
      transformer: (json) => PreferencesTagsData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(PreferencesTagsMapper.toModel(u)));
  }
}
