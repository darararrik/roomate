import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/di/data_source_providers.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
IApartamentsRepository apartamentsRepository(Ref ref) {
  return ApartamentsRepositoryImpl(ref.watch(apartamentsDataSourceProvider));
}

@Riverpod(keepAlive: true)
ILocationCatalogRepository locationCatalogRepository(Ref ref) {
  return LocationCatalogRepositoryImpl(
    ref.watch(locationCatalogDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
IProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(dataSource: ref.watch(profileDataSourceProvider));
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authDataSourceProvider));
}
