// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_field_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TagGroupDto _$TagGroupDtoFromJson(Map<String, dynamic> json) => _TagGroupDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  isRadio: json['is_radio'] as bool? ?? false,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TagGroupDtoToJson(_TagGroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'is_radio': instance.isRadio,
      'type': instance.$type,
    };

_InputDto _$InputDtoFromJson(Map<String, dynamic> json) => _InputDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  hintText: json['hint_text'] as String,
  isNumeric: json['is_numeric'] as bool? ?? false,
  suffix: json['suffix'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$InputDtoToJson(_InputDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'hint_text': instance.hintText,
  'is_numeric': instance.isNumeric,
  'suffix': instance.suffix,
  'type': instance.$type,
};

_AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => _AddressDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$AddressDtoToJson(_AddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.$type,
    };

_MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) => _MediaDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  isPhoto: json['is_photo'] as bool,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$MediaDtoToJson(_MediaDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'is_photo': instance.isPhoto,
  'type': instance.$type,
};
