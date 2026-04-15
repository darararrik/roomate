import 'package:data/lib.dart';
import 'package:domain/domain.dart';

class LocationCatalogRepositoryImpl implements ILocationCatalogRepository {
  LocationCatalogRepositoryImpl(this._dataSource);

  final LocationCatalogDataSource _dataSource;

  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) {
    return _dataSource.getStreetsForCity(cityKey);
  }
}
