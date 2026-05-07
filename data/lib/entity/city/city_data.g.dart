// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityData _$CityDataFromJson(Map<String, dynamic> json) => _CityData(
  id: (json['id'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  fiasId: json['fias_id'] as String? ?? '',
  region: json['region'] as String? ?? '',
);

Map<String, dynamic> _$CityDataToJson(_CityData instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'fias_id': instance.fiasId,
  'region': instance.region,
};
