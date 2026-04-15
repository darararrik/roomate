import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/lib.dart';

class LocationCatalogMockDataSource implements LocationCatalogDataSource {
  List<StreetModel>? _cache;

  @override
  Future<List<StreetModel>> getStreetsForCity(String cityKey) async {
    if (cityKey != 'omsk') {
      return [];
    }
    _cache ??= await _loadOmsk();
    return List<StreetModel>.unmodifiable(_cache!);
  }

  Future<List<StreetModel>> _loadOmsk() async {
    final json = OmskStreetsMockJson.fetchStreets;
    final data = json.map((e) => StreetDto.fromJson(e)).toList();
    return data.map((e) => e.toModel()).toList();
  }
}
