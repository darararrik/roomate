import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/mappers/city_mapper.dart';
import 'package:data/mappers/location_suggestion_mapper.dart';
import 'package:data/utils/unpack.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

/// Удалённый источник улиц. Пока заглушка под будущий API.
class LocationRemoteDataSource implements LocationDataSource {
  LocationRemoteDataSource({required ApiClient client}) : _client = client;

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<CityModel>>> fetchCities() async {
    final res = await _client.get(
      ApiUrlConstants.cities,
      needAuth: true,
      transformer: (json) => unpackDtoList(
        json,
        fromJson: CityData.fromJson,
        toModel: CityMapper.toModel,
      ),
    );
    return res;
  }

  @override
  Future<Either<RemoteException, List<LocationSuggestionModel>>>
  suggestLocations(String addressQuery) async {
    final res = await _client.get<List<LocationSuggestionModel>>(
      ApiUrlConstants.locationsSuggest,
      query: {'query': addressQuery},
      transformer: (json) => unpackDtoList(
        json,
        fromJson: LocationSuggestionDto.fromJson,
        toModel: LocationSuggestionMapper.toModel,
      ),
    );
    return res;
  }
}
