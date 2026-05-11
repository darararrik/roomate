// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cities)
final citiesProvider = CitiesProvider._();

final class CitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CityModel>>,
          List<CityModel>,
          FutureOr<List<CityModel>>
        >
    with $FutureModifier<List<CityModel>>, $FutureProvider<List<CityModel>> {
  CitiesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'citiesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$citiesHash();

  @$internal
  @override
  $FutureProviderElement<List<CityModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CityModel>> create(Ref ref) {
    return cities(ref);
  }
}

String _$citiesHash() => r'5b19a897615d4de4a4553e24aac322ef4c7f495f';

@ProviderFor(locationSuggestions)
final locationSuggestionsProvider = LocationSuggestionsFamily._();

final class LocationSuggestionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LocationSuggestionModel>>,
          List<LocationSuggestionModel>,
          FutureOr<List<LocationSuggestionModel>>
        >
    with
        $FutureModifier<List<LocationSuggestionModel>>,
        $FutureProvider<List<LocationSuggestionModel>> {
  LocationSuggestionsProvider._({
    required LocationSuggestionsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'locationSuggestionsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationSuggestionsHash();

  @override
  String toString() {
    return r'locationSuggestionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<LocationSuggestionModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LocationSuggestionModel>> create(Ref ref) {
    final argument = this.argument as String;
    return locationSuggestions(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationSuggestionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationSuggestionsHash() =>
    r'c461c492564b7857304cffdfbf6d20697c7deaaa';

final class LocationSuggestionsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<LocationSuggestionModel>>,
          String
        > {
  LocationSuggestionsFamily._()
    : super(
        retry: null,
        name: r'locationSuggestionsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationSuggestionsProvider call(String addressQuery) =>
      LocationSuggestionsProvider._(argument: addressQuery, from: this);

  @override
  String toString() => r'locationSuggestionsProvider';
}

@ProviderFor(currentProfileCity)
final currentProfileCityProvider = CurrentProfileCityProvider._();

final class CurrentProfileCityProvider
    extends $FunctionalProvider<CityModel?, CityModel?, CityModel?>
    with $Provider<CityModel?> {
  CurrentProfileCityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentProfileCityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentProfileCityHash();

  @$internal
  @override
  $ProviderElement<CityModel?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CityModel? create(Ref ref) {
    return currentProfileCity(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CityModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CityModel?>(value),
    );
  }
}

String _$currentProfileCityHash() =>
    r'b2e347d56afbd0760eb2cbea1c27d7a6f9f72846';
