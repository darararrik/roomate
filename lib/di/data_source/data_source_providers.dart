import 'package:data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/app_providers.dart';
import '../core/network_providers.dart';

part 'data_source_providers.g.dart';

@Riverpod(keepAlive: true)
ProfileDataSource profileDataSource(Ref ref) {
  if (ref.watch(configProvider).useMocks) {
    return ProfileMockDataSource();
  }
  return ProfileRemoteDataSource(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
ApartamentsDataSource apartamentsDataSource(Ref ref) {
  if (ref.watch(configProvider).useMocks) {
    return ApartamentsMockDataSource();
  }
  return ApartamentsRemoteDataSource(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
LocationDataSource locationDataSource(Ref ref) {
  if (ref.watch(configProvider).useMocks) {
    return LocationCatalogMockDataSource();
  }
  return LocationRemoteDataSource(client: ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
AuthDataSource authDataSource(Ref ref) {
  if (ref.watch(configProvider).useMocks) {
    return AuthMockDataSource(tokenService: ref.watch(tokenServiceProvider));
  }
  return AuthRemoteDataSource(
    client: ref.watch(apiClientProvider),
    tokenService: ref.watch(tokenServiceProvider),
  );
}
