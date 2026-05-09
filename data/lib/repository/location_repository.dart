import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class LocationRepositoryImpl implements ILocationRepository {
  LocationRepositoryImpl(this._dataSource);

  final LocationDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<CityModel>>> fetchCities() =>
      _dataSource.fetchCities();

  @override
  Future<Either<RemoteException, List<LocationSuggestionModel>>>
  suggestLocations(String addressQuery) =>
      _dataSource.suggestLocations(addressQuery);
}
