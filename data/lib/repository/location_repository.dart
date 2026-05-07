import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class LocationRepositoryImpl implements ILocationRepository {
  LocationRepositoryImpl(this._dataSource);

  final LocationDataSource _dataSource;

  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) =>
      _dataSource.getStreetsForCity(cityKey);

  @override
  Future<Either<RemoteException, List<CityModel>>> fetchCities() => _dataSource.fetchCities();
}
