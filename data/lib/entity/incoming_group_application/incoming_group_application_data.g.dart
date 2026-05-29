// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_group_application_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncomingGroupApplicationData _$IncomingGroupApplicationDataFromJson(
  Map<String, dynamic> json,
) => _IncomingGroupApplicationData(
  id: json['id'] as String? ?? '',
  status: json['status'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
  group: json['group'] == null
      ? null
      : GroupListItemData.fromJson(json['group'] as Map<String, dynamic>),
  tenant: json['applicant'] == null
      ? null
      : TenantData.fromJson(json['applicant'] as Map<String, dynamic>),
  applicantProfile: json['applicant_profile'] == null
      ? null
      : TenantProfileData.fromJson(
          json['applicant_profile'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$IncomingGroupApplicationDataToJson(
  _IncomingGroupApplicationData instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'created_at': instance.createdAt,
  'group': instance.group,
  'applicant': instance.tenant,
  'applicant_profile': instance.applicantProfile,
};
