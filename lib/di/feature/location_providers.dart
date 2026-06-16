import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/notifier/global_profile/global_profile_notifier.dart';

import '../repository/repository_providers.dart';

part 'location_providers.g.dart';

@Riverpod(keepAlive: true)
class SelectedMainCity extends _$SelectedMainCity {
  @override
  CityModel? build() => null;

  void select(CityModel city) {
    state = city;
  }
}

@Riverpod(keepAlive: true)
CityModel? currentMainCity(Ref ref) {
  final profile = ref.watch(globalProfileProvider).value;
  if (profile?.isGuest == true) {
    return ref.watch(selectedMainCityProvider) ??
        ref.watch(currentProfileCityProvider);
  }

  return ref.watch(currentProfileCityProvider);
}

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
  final profile = ref.watch(globalProfileProvider).value;
  final profileCityFiasId = (profile?.cityFiasId ?? '').trim();
  final profileCity = (profile?.city ?? '').trim();

  final citiesState = ref.watch(citiesProvider);
  return citiesState.maybeWhen(
    data: (cities) {
      if (profileCityFiasId.isNotEmpty) {
        for (final city in cities) {
          if (city.fiasId.trim() == profileCityFiasId) {
            return city;
          }
        }
      }

      final normalizedProfileCity = profileCity.toLowerCase();
      if (normalizedProfileCity.isNotEmpty) {
        for (final city in cities) {
          if (city.title.trim().toLowerCase() == normalizedProfileCity) {
            return city;
          }
        }
      }

      for (final city in cities) {
        if (city.fiasId.trim() == AppDefaultCity.fiasId) {
          return city;
        }
      }

      return AppDefaultCity.city;
    },
    orElse: () => AppDefaultCity.city,
  );
}

LocationSelectionModel resolveLocationSelection({
  required LocationSuggestionModel suggestion,
  required List<CityModel> cities,
  CityModel? fallbackCity,
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

  final suggestionCityTitle = _sanitizeCityTitle(suggestion.city);
  if (matchedCity == null && suggestionCityTitle.isNotEmpty) {
    for (final city in cities) {
      if (city.title.trim().toLowerCase() ==
          suggestionCityTitle.toLowerCase()) {
        matchedCity = city;
        break;
      }
    }
  }

  final cityTitle = matchedCity?.title.isNotEmpty == true
      ? matchedCity!.title
      : suggestionCityTitle.isNotEmpty
      ? suggestionCityTitle
      : fallbackCity?.title ?? '';

  return LocationSelectionModel(
    cityId: matchedCity?.id ?? fallbackCity?.id ?? 0,
    cityTitle: cityTitle,
    cityFiasId: matchedCity?.fiasId.isNotEmpty == true
        ? matchedCity!.fiasId
        : suggestionFiasId.isNotEmpty
        ? suggestionFiasId
        : fallbackCity?.fiasId ?? '',
    addressQuery: suggestion.value,
    displayTitle: suggestion.value,
    addressDetails: suggestion,
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
