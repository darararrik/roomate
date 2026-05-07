import 'package:domain/models/city/city_model.dart';

import 'package:data/entity/city/city_data.dart';

abstract class CityMapper {
  static CityModel toModel(CityData data) {
    return CityModel(id: data.id, title: data.title, fiasId: data.fiasId, region: data.region);
  }

  static CityData toData(CityModel model) {
    return CityData(id: model.id, title: model.title, fiasId: model.fiasId, region: model.region);
  }
}
