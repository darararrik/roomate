// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServerError _$ServerErrorFromJson(Map<String, dynamic> json) => _ServerError(
  status: (json['status'] as num?)?.toInt(),
  error: json['error'] as String?,
  message: json['message'] as String?,
  path: json['path'] as String?,
);

Map<String, dynamic> _$ServerErrorToJson(_ServerError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'path': instance.path,
    };
