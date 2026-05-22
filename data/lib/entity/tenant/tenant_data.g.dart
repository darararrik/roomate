// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TenantData _$TenantDataFromJson(Map<String, dynamic> json) => _TenantData(
  id: json['id'] as String? ?? '',
  firstName: json['first_name'] as String? ?? '',
  lastName: json['last_name'] as String? ?? '',
  age: (json['age'] as num?)?.toInt() ?? 0,
  gender: json['gender'] as String? ?? '',
  city: json['city'] as String? ?? '',
  photo: json['photo'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  isVerified: json['is_verified'] as bool? ?? false,
);

Map<String, dynamic> _$TenantDataToJson(_TenantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'age': instance.age,
      'gender': instance.gender,
      'city': instance.city,
      'photo': instance.photo,
      'phone': instance.phone,
      'is_verified': instance.isVerified,
    };
