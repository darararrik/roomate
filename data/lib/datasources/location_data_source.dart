import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

abstract class LocationDataSource {
  Future<List<StreetModel>> getStreetsForCity(String cityKey);
  Future<Either<RemoteException, List<CityModel>>> fetchCities();
}
