import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/data/datasources/remote/profile_remote_datasource.dart';
import 'package:roomate/data/repository/profile_repository.dart';
import 'package:roomate/domain/repository/auth_repository.dart';
import 'package:roomate/domain/repository/profile_repository.dart';

part 'providers.g.dart';

@riverpod
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource();
}

@riverpod
IProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(
    remoteDataSource: ref.watch(profileRemoteDataSourceProvider),
  );
}

@riverpod
AuthRepository authRepository(Ref ref) {
  // TODO: implement and return actual AuthRepository
  throw UnimplementedError('AuthRepository is not implemented yet');
}
