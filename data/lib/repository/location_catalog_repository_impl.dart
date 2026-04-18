import 'package:domain/domain.dart';

import 'package:data/lib.dart';

class LocationCatalogRepositoryImpl implements ILocationCatalogRepository {
  LocationCatalogRepositoryImpl(this._dataSource);

  final LocationCatalogDataSource _dataSource;

  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) {
    return _dataSource.getStreetsForCity(cityKey);
  }
}
