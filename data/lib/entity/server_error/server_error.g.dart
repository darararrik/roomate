// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServerError _$ServerErrorFromJson(Map<String, dynamic> json) => _ServerError(
  generalServerStatusCode: (json['generalServerStatusCode'] as num?)?.toInt(),
  generalServerErrorId: json['generalServerErrorId'] as String?,
  generalMessages: json['generalMessages'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ServerErrorToJson(_ServerError instance) =>
    <String, dynamic>{
      'generalServerStatusCode': instance.generalServerStatusCode,
      'generalServerErrorId': instance.generalServerErrorId,
      'generalMessages': instance.generalMessages,
    };
