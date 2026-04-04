// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_PropertyTypeDto _$PropertyTypeDtoFromJson(Map<String, dynamic> json) =>
    _PropertyTypeDto(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PropertyTypeDtoToJson(_PropertyTypeDto instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_RoomsCountDto _$RoomsCountDtoFromJson(Map<String, dynamic> json) =>
    _RoomsCountDto(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RoomsCountDtoToJson(_RoomsCountDto instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_ApartamentTaxonomyDto _$ApartamentTaxonomyDtoFromJson(
  Map<String, dynamic> json,
) => _ApartamentTaxonomyDto(
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  propertyTypes: (json['property_type'] as List<dynamic>?)
      ?.map((e) => PropertyTypeDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  roomsCounts: (json['rooms_count'] as List<dynamic>?)
      ?.map((e) => RoomsCountDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ApartamentTaxonomyDtoToJson(
  _ApartamentTaxonomyDto instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'property_type': instance.propertyTypes,
  'rooms_count': instance.roomsCounts,
};
