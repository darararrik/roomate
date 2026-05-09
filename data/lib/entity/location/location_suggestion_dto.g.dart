// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_suggestion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationSuggestionDto _$LocationSuggestionDtoFromJson(
  Map<String, dynamic> json,
) => _LocationSuggestionDto(
  value: json['value'] as String? ?? '',
  unrestrictedValue: json['unrestricted_value'] as String? ?? '',
  country: json['country'] as String? ?? '',
  region: json['region'] as String? ?? '',
  city: json['city'] as String?,
  cityFiasId: json['city_fias_id'] as String?,
  district: json['district'] as String?,
  street: json['street'] as String?,
  streetFiasId: json['street_fias_id'] as String?,
  house: json['house'] as String?,
  houseFiasId: json['house_fias_id'] as String?,
  geoLat: (json['geo_lat'] as num?)?.toDouble(),
  geoLon: (json['geo_lon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LocationSuggestionDtoToJson(
  _LocationSuggestionDto instance,
) => <String, dynamic>{
  'value': instance.value,
  'unrestricted_value': instance.unrestrictedValue,
  'country': instance.country,
  'region': instance.region,
  'city': instance.city,
  'city_fias_id': instance.cityFiasId,
  'district': instance.district,
  'street': instance.street,
  'street_fias_id': instance.streetFiasId,
  'house': instance.house,
  'house_fias_id': instance.houseFiasId,
  'geo_lat': instance.geoLat,
  'geo_lon': instance.geoLon,
};
