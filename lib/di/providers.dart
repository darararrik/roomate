import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
  return ApartamentsRepositoryImpl(
    ref.watch(apartamentsRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
LocationCatalogDataSource locationCatalogDataSource(Ref ref) {
  return LocationCatalogMockDataSource();
}

@Riverpod(keepAlive: true)
ILocationCatalogRepository locationCatalogRepository(Ref ref) {
  return LocationCatalogRepositoryImpl(
    ref.watch(locationCatalogDataSourceProvider),
  );
}

@riverpod
Future<List<StreetModel>> cityStreets(Ref ref, String cityKey) {
  return ref
      .watch(locationCatalogRepositoryProvider)
      .getStreetsForCity(cityKey);
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
