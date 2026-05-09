import 'package:domain/domain.dart';

import 'package:data/entity/location/location_suggestion_dto.dart';

abstract class LocationSuggestionMapper {
  static LocationSuggestionModel toModel(LocationSuggestionDto dto) {
    return LocationSuggestionModel(
      value: dto.value,
      unrestrictedValue: dto.unrestrictedValue,
      country: dto.country,
      region: dto.region,
      city: dto.city,
      cityFiasId: dto.cityFiasId,
      district: dto.district,
      street: dto.street,
      streetFiasId: dto.streetFiasId,
      house: dto.house,
      houseFiasId: dto.houseFiasId,
      geoLat: dto.geoLat,
      geoLon: dto.geoLon,
    );
  }
}
