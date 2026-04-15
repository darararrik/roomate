import 'package:data/lib.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'infrastructure_providers.dart'; // импорт apiClientProvider

part 'data_source_providers.g.dart';

@Riverpod(keepAlive: true)
ProfileDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
ApartamentsDataSource apartamentsRemoteDataSource(Ref ref) {
  return ApartamentsRemoteDataSource(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
ProfileTagsMockDataSource profileTagsMockDataSource(Ref ref) {
  return ProfileTagsMockDataSource();
}

@Riverpod(keepAlive: true)
LocationCatalogDataSource locationCatalogDataSource(Ref ref) {
  return LocationCatalogMockDataSource();
}

@Riverpod(keepAlive: true)
AuthDataSource authDataSource(Ref ref) {
  return AuthRemoteDataSource(client: ref.watch(apiClientProvider));
}
