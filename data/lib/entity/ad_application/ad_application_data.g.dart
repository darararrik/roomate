// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_application_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdApplicationData _$AdApplicationDataFromJson(Map<String, dynamic> json) =>
    _AdApplicationData(
      id: json['id'] as String? ?? '',
      status: json['status'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      ad: json['ad'] == null
          ? null
          : MyAdData.fromJson(json['ad'] as Map<String, dynamic>),
      tenant: json['tenant'] == null
          ? null
          : TenantData.fromJson(json['tenant'] as Map<String, dynamic>),
      tenantProfile: json['tenant_profile'] == null
          ? null
          : TenantProfileData.fromJson(
              json['tenant_profile'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdApplicationDataToJson(_AdApplicationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'ad': instance.ad,
      'tenant': instance.tenant,
      'tenant_profile': instance.tenantProfile,
    };
