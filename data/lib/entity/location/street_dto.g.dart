// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreetDto _$StreetDtoFromJson(Map<String, dynamic> json) => _StreetDto(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  district: json['district'] as String?,
  regionLine: json['region_line'] as String?,
);

Map<String, dynamic> _$StreetDtoToJson(_StreetDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'district': instance.district,
      'region_line': instance.regionLine,
    };
