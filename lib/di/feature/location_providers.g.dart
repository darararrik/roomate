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

String _$citiesHash() => r'422cdd1166838c449e48057c2330a2beea61ea9c';

@ProviderFor(cityStreets)
final cityStreetsProvider = CityStreetsFamily._();

final class CityStreetsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<StreetModel>>,
          List<StreetModel>,
          FutureOr<List<StreetModel>>
        >
    with
        $FutureModifier<List<StreetModel>>,
        $FutureProvider<List<StreetModel>> {
  CityStreetsProvider._({
    required CityStreetsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cityStreetsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cityStreetsHash();

  @override
  String toString() {
    return r'cityStreetsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<StreetModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<StreetModel>> create(Ref ref) {
    final argument = this.argument as String;
    return cityStreets(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CityStreetsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cityStreetsHash() => r'b2f95357c49ae7c4121aabfaeb1f7ce5f55d7c54';

final class CityStreetsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<StreetModel>>, String> {
  CityStreetsFamily._()
    : super(
        retry: null,
        name: r'cityStreetsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CityStreetsProvider call(String cityKey) =>
      CityStreetsProvider._(argument: cityKey, from: this);

  @override
  String toString() => r'cityStreetsProvider';
}
