import 'package:domain/domain.dart';

abstract class LocationCatalogDataSource {
  Future<List<StreetModel>> getStreetsForCity(String cityKey);
}
