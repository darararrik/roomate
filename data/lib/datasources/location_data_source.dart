import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

abstract class LocationDataSource {
  Future<Either<RemoteException, List<CityModel>>> fetchCities();
  Future<Either<RemoteException, List<LocationSuggestionModel>>>
  suggestLocations(String addressQuery);
}
