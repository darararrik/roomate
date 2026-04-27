// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInResponseData _$SignInResponseDataFromJson(Map<String, dynamic> json) =>
    _SignInResponseData(
      message: json['message'] as String?,
      expiresInSeconds: (json['expires_in_seconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SignInResponseDataToJson(_SignInResponseData instance) =>
    <String, dynamic>{
      'message': instance.message,
      'expires_in_seconds': instance.expiresInSeconds,
    };
