// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TenantProfileData _$TenantProfileDataFromJson(Map<String, dynamic> json) =>
    _TenantProfileData(
      about: json['about'] as String? ?? '',
      preferences: json['preferences'] == null
          ? null
          : SelectedUserPreferencesData.fromJson(
              json['preferences'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$TenantProfileDataToJson(_TenantProfileData instance) =>
    <String, dynamic>{
      'about': instance.about,
      'preferences': instance.preferences,
    };
