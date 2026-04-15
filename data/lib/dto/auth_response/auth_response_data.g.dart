// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseData _$AuthResponseDataFromJson(Map<String, dynamic> json) =>
    _AuthResponseData(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      tokenType: json['tokenType'] as String?,
      expiresInSeconds: (json['expiresInSeconds'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDataToJson(_AuthResponseData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresInSeconds': instance.expiresInSeconds,
      'user': instance.user,
    };
