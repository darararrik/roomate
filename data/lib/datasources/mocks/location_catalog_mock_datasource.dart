import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class LocationCatalogMockDataSource implements LocationDataSource {
  @override
  Future<Either<RemoteException, List<CityModel>>> fetchCities() async {
    return Right([
      CityModel(id: 1, title: 'Омск', fiasId: 'omsk', region: 'Омская область'),
    ]);
  }

  @override
  Future<Either<RemoteException, List<LocationSuggestionModel>>>
  suggestLocations(String addressQuery) async {
    final query = addressQuery.trim().toLowerCase();
    if (query.isEmpty) {
      return const Right([]);
    }

    final suggestions =
        [
              const LocationSuggestionModel(
                value: 'г Омск',
                unrestrictedValue: '644000, Омская обл, г Омск',
                country: 'Россия',
                region: 'Омская обл',
                city: 'г Омск',
                cityFiasId: 'omsk',
              ),
              const LocationSuggestionModel(
                value: 'г Омск, ул Омская',
                unrestrictedValue:
                    'Омская обл, г Омск, Центральный округ, ул Омская',
                country: 'Россия',
                region: 'Омская обл',
                city: 'г Омск',
                cityFiasId: 'omsk',
                street: 'ул Омская',
                streetFiasId: 'omsk-street',
              ),
            ]
            .where((item) {
              final haystack = [
                item.value,
                item.unrestrictedValue,
                item.city ?? '',
                item.region,
                item.street ?? '',
              ].join(' ').toLowerCase();
              return haystack.contains(query);
            })
            .toList(growable: false);

    return Right(suggestions);
  }
}
