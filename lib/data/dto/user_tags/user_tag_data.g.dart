// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tag_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserTagData _$UserTagDataFromJson(Map<String, dynamic> json) => _UserTagData(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  isSelected: json['is_selected'] as bool?,
);

Map<String, dynamic> _$UserTagDataToJson(_UserTagData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_selected': instance.isSelected,
    };

_UserTagsGroupData _$UserTagsGroupDataFromJson(Map<String, dynamic> json) =>
    _UserTagsGroupData(
      groupId: json['group_id'] as String?,
      groupTitle: json['group_title'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => UserTagData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserTagsGroupDataToJson(_UserTagsGroupData instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'group_title': instance.groupTitle,
      'tags': instance.tags,
    };
