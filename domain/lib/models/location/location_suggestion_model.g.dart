// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationSuggestionModel _$LocationSuggestionModelFromJson(
  Map<String, dynamic> json,
) => _LocationSuggestionModel(
  value: json['value'] as String? ?? '',
  unrestrictedValue: json['unrestrictedValue'] as String? ?? '',
  country: json['country'] as String? ?? '',
  region: json['region'] as String? ?? '',
  city: json['city'] as String?,
  cityFiasId: json['cityFiasId'] as String?,
  district: json['district'] as String?,
  street: json['street'] as String?,
  streetFiasId: json['streetFiasId'] as String?,
  house: json['house'] as String?,
  houseFiasId: json['houseFiasId'] as String?,
  geoLat: (json['geoLat'] as num?)?.toDouble(),
  geoLon: (json['geoLon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LocationSuggestionModelToJson(
  _LocationSuggestionModel instance,
) => <String, dynamic>{
  'value': instance.value,
  'unrestrictedValue': instance.unrestrictedValue,
  'country': instance.country,
  'region': instance.region,
  'city': ?instance.city,
  'cityFiasId': ?instance.cityFiasId,
  'district': ?instance.district,
  'street': ?instance.street,
  'streetFiasId': ?instance.streetFiasId,
  'house': ?instance.house,
  'houseFiasId': ?instance.houseFiasId,
  'geoLat': ?instance.geoLat,
  'geoLon': ?instance.geoLon,
};
