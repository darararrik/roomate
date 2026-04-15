import 'package:data/lib.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data_source_providers.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
ITokenRepository tokenRepository(Ref ref) => TokenRepositoryImpl();

@Riverpod(keepAlive: true)
IApartamentsRepository apartamentsRepository(Ref ref) {
  return ApartamentsRepositoryImpl(ref.watch(apartamentsRemoteDataSourceProvider));
}

@Riverpod(keepAlive: true)
ILocationCatalogRepository locationCatalogRepository(Ref ref) {
  return LocationCatalogRepositoryImpl(ref.watch(locationCatalogDataSourceProvider));
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
  return AuthRepositoryImpl(ref.watch(authDataSourceProvider));
}
