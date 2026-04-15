import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'repository_providers.dart';

part 'location_providers.g.dart';

@riverpod
Future<List<StreetModel>> cityStreets(Ref ref, String cityKey) {
  // Рекомендуется использовать cityKey вместо хардкода 'omsk'
  return ref.watch(locationCatalogRepositoryProvider).getStreetsForCity(cityKey);
}
