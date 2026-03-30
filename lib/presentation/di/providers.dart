import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/data/datasources/remote/mocks/apartaments_mock_datasource.dart';
import 'package:roomate/data/repository/apartaments_repository.dart';
import 'package:roomate/data/datasources/remote/profile_remote_datasource.dart';
import 'package:roomate/data/repository/create_ad_repository.dart';
import 'package:roomate/data/repository/profile_repository.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';
import 'package:roomate/domain/repository/auth_repository.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';
import 'package:roomate/domain/repository/profile_repository.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource();
}

@Riverpod(keepAlive: true)
ApartamentsMockDataSource apartamentsMockDataSource(Ref ref) {
  return ApartamentsMockDataSource();
}

@riverpod
IApartamentsRepository apartamentsRepository(Ref ref) {
  return ApartamentsRepository(
    mockDataSource: ref.watch(apartamentsMockDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
IProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(
    remoteDataSource: ref.watch(profileRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  // TODO: implement and return actual AuthRepository
  throw UnimplementedError('AuthRepository is not implemented yet');
}

@riverpod
ICreateAdRepository createAdRepository(Ref ref) {
  return CreateAdRepository();
}
