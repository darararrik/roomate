import 'package:domain/domain.dart';

import 'package:data/data.dart';

/// Удалённый источник улиц. Пока заглушка под будущий API.
class LocationCatalogRemoteDataSource implements LocationCatalogDataSource {
  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) async {
    // TODO: GET /locations/{cityKey}/streets
    return [];
  }
}
