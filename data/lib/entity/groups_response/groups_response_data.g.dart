// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupsResponseData _$GroupsResponseDataFromJson(Map<String, dynamic> json) =>
    _GroupsResponseData(
      totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => GroupListItemData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GroupsResponseDataToJson(_GroupsResponseData instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
