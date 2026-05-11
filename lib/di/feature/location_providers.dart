import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/notifier/global_profile/global_profile_notifier.dart';

import '../repository/repository_providers.dart';

part 'location_providers.g.dart';

@Riverpod(keepAlive: true)
Future<List<CityModel>> cities(Ref ref) async {
  final result = await ref.read(locationRepositoryProvider).fetchCities();

  return result.fold((error) => throw error, (cities) => cities);
}

@riverpod
Future<List<LocationSuggestionModel>> locationSuggestions(
  Ref ref,
  String addressQuery,
) async {
  final trimmedQuery = addressQuery.trim();
  if (trimmedQuery.isEmpty) {
    return const [];
  }

  final result = await ref
      .read(locationRepositoryProvider)
      .suggestLocations(trimmedQuery);
  return result.fold((error) => throw error, (suggestions) => suggestions);
}

@riverpod
CityModel? currentProfileCity(Ref ref) {
  final profileCity = ref.watch(globalProfileProvider).value?.city ?? '';
  if (profileCity.trim().isEmpty) return CityModel(title: 'Москва');

  final citiesState = ref.watch(citiesProvider);
  return citiesState.maybeWhen(
    data: (cities) {
      final normalizedProfileCity = profileCity.trim().toLowerCase();
      for (final city in cities) {
        if (city.title.trim().toLowerCase() == normalizedProfileCity) {
          return city;
        }
      }
      return null;
    },
    orElse: () => null,
  );
}

LocationSelectionModel resolveLocationSelection({
  required LocationSuggestionModel suggestion,
  required List<CityModel> cities,
}) {
  CityModel? matchedCity;
  final suggestionFiasId = (suggestion.cityFiasId ?? '').trim();
  if (suggestionFiasId.isNotEmpty) {
    for (final city in cities) {
      if (city.fiasId.trim() == suggestionFiasId) {
        matchedCity = city;
        break;
      }
    }
  }

  final cityTitle = matchedCity?.title ?? _sanitizeCityTitle(suggestion.city);
  return LocationSelectionModel(
    cityId: matchedCity?.id ?? 0,
    cityTitle: cityTitle,
    cityFiasId: suggestionFiasId,
    addressQuery: suggestion.value,
    displayTitle: suggestion.value,
  );
}

String _sanitizeCityTitle(String? city) {
  final raw = (city ?? '').trim();
  if (raw.isEmpty) return '';

  return raw
      .replaceFirst(RegExp(r'^г\.\s*', caseSensitive: false), '')
      .replaceFirst(RegExp(r'^г\s+', caseSensitive: false), '')
      .trim();
}
