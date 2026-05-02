import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class ProfileRemoteDataSource implements ProfileDataSource {
  ProfileRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, ProfileModel>> fetchProfile() async {
    final result = await _client.get<ProfileData>(
      ApiUrlConstants.me,
      needAuth: true,
      transformer: (json) => ProfileData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(ProfileMapper.toModel(u)));
  }

  @override
  Future<Either<RemoteException, ProfileModel>> updateProfile(ProfileModel user) async {
    final result = await _client.put<ProfileData>(
      ApiUrlConstants.me,
      needAuth: true,
      body: ProfileMapper.toData(user).toJson(),
      transformer: (json) => ProfileData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(ProfileMapper.toModel(u)));
  }

  @override
  Future<Either<RemoteException, PreferenceTagsCatalogModel>> fetchPreferenceTagsCatalog() async {
    final result = await _client.get(
      ApiUrlConstants.preferenceTagsCatalog,
      needAuth: true,
      transformer: (json) => PreferencesTagsData.fromJson(json),
    );

    return result.fold((e) => Left(e), (u) => Right(PreferenceTagsCatalogMapper.toModel(u)));
  }
}
