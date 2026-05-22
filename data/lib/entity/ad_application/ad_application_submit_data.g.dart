// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_application_submit_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdApplicationSubmitData _$AdApplicationSubmitDataFromJson(
  Map<String, dynamic> json,
) => _AdApplicationSubmitData(
  id: json['id'] as String? ?? '',
  adId: json['ad_id'] as String? ?? '',
  status: json['status'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$AdApplicationSubmitDataToJson(
  _AdApplicationSubmitData instance,
) => <String, dynamic>{
  'id': instance.id,
  'ad_id': instance.adId,
  'status': instance.status,
  'created_at': instance.createdAt,
};
