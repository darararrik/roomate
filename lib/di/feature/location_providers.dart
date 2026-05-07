import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/repository_providers.dart';
import '../use_case/location_use_case_providers.dart';

part 'location_providers.g.dart';

@Riverpod(keepAlive: true)
Future<List<CityModel>> cities(Ref ref) async {
  final result = await ref.read(fetchCitiesUseCaseProvider).call();

  return result.fold((error) => throw error, (cities) => cities);
}

@riverpod
Future<List<StreetModel>> cityStreets(Ref ref, String cityKey) {
  // Рекомендуется использовать cityKey вместо хардкода 'omsk'
  return ref.watch(locationRepositoryProvider).getStreetsForCity(cityKey);
}
