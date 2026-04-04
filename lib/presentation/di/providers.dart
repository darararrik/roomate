import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/data/datasources/profile_data_source.dart';

import 'package:roomate/data/datasources/remote/apartaments_remote_datasource.dart';
import 'package:roomate/data/datasources/remote/mocks/profile_tags_mock_datasource.dart';
import 'package:roomate/data/datasources/remote/profile_remote_datasource.dart';
import 'package:roomate/data/repository/apartaments_repository.dart';
import 'package:roomate/data/repository/profile_repository.dart';
import 'package:roomate/domain/repository/apartaments_repository.dart';
import 'package:roomate/domain/repository/auth_repository.dart';
import 'package:roomate/domain/repository/profile_repository.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
ProfileDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource();
}

@Riverpod(keepAlive: true)
ApartamentsRemoteDataSource apartamentsRemoteDataSource(Ref ref) {
  return ApartamentsRemoteDataSource();
}

@Riverpod(keepAlive: true)
ProfileTagsMockDataSource profileTagsMockDataSource(Ref ref) {
  return ProfileTagsMockDataSource();
}

@Riverpod(keepAlive: true)
IApartamentsRepository apartamentsRepository(Ref ref) {
  return ApartamentsRepositoryImpl(ref.watch(apartamentsRemoteDataSourceProvider));
}

@Riverpod(keepAlive: true)
IProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(
    remoteDataSource: ref.watch(profileRemoteDataSourceProvider),
    tagsMockDataSource: ref.watch(profileTagsMockDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  // TODO: implement and return actual AuthRepository
  throw UnimplementedError('AuthRepository is not implemented yet');
}
