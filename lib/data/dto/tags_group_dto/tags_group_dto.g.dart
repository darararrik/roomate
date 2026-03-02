// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TagsGroupDto _$TagsGroupDtoFromJson(Map<String, dynamic> json) =>
    _TagsGroupDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isRadio: json['isRadio'] as bool,
    );

Map<String, dynamic> _$TagsGroupDtoToJson(_TagsGroupDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'isRadio': instance.isRadio,
    };
