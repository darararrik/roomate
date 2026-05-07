import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';
import 'package:data/mappers/city_mapper.dart';
import 'package:data/utils/unpack.dart';

/// Удалённый источник улиц. Пока заглушка под будущий API.
class LocationRemoteDataSource implements LocationDataSource {
  LocationRemoteDataSource({required ApiClient client}) : _client = client;

  final ApiClient _client;
  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) async {
    // TODO: GET /locations/{cityKey}/streets
    return [];
  }

  @override
  Future<Either<RemoteException, List<CityModel>>> fetchCities() async {
    final res = await _client.get(
      ApiUrlConstants.cities,
      needAuth: true,
      transformer: (json) =>
          unpackDtoList(json, fromJson: CityData.fromJson, toModel: CityMapper.toModel),
    );
    return res;
  }
}
