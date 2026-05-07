import 'package:dartz/dartz.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:domain/domain.dart';

class FetchCitiesUseCase {
  FetchCitiesUseCase({required ILocationRepository repository}) : _repository = repository;

  final ILocationRepository _repository;

  Future<Either<RemoteException, List<CityModel>>> call() => _repository.fetchCities();
}
