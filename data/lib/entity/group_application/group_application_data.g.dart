// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_application_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupApplicationData _$GroupApplicationDataFromJson(
  Map<String, dynamic> json,
) => _GroupApplicationData(
  id: json['id'] as String?,
  groupId: json['group_id'] as String?,
  status: json['status'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$GroupApplicationDataToJson(
  _GroupApplicationData instance,
) => <String, dynamic>{
  'id': instance.id,
  'group_id': instance.groupId,
  'status': instance.status,
  'created_at': instance.createdAt,
};
