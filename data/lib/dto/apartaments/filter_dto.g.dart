// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionDto _$OptionDtoFromJson(Map<String, dynamic> json) => _OptionDto(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$OptionDtoToJson(_OptionDto instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_FilterDto _$FilterDtoFromJson(Map<String, dynamic> json) => _FilterDto(
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  propertyTypes: (json['property_type'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  roomsCounts: (json['rooms_count'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilterDtoToJson(_FilterDto instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'property_type': instance.propertyTypes,
      'rooms_count': instance.roomsCounts,
    };
