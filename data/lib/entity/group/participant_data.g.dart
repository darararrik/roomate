// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParticipantData _$ParticipantDataFromJson(Map<String, dynamic> json) =>
    _ParticipantData(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      isVerified: json['is_verified'] as bool?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$ParticipantDataToJson(_ParticipantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'is_verified': instance.isVerified,
      'role': instance.role,
    };
