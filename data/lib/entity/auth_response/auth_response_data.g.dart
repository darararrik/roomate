// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseData _$AuthResponseDataFromJson(Map<String, dynamic> json) =>
    _AuthResponseData(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresInSeconds: (json['expires_in_seconds'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDataToJson(_AuthResponseData instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'expires_in_seconds': instance.expiresInSeconds,
      'user': instance.user,
    };
