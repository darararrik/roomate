// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: (json['id'] as num?)?.toInt(),
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phone: json['phone'] as String?,
  gender: json['gender'] as String?,
  age: (json['age'] as num?)?.toInt(),
  city: json['city'] as String?,
  avatarUrl: json['photo'] as String?,
  isVerified: json['status'] as bool?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => UserTagData.fromJson(e as Map<String, dynamic>))
      .toList(),
  isOwner: json['is_owner'] as bool?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'gender': instance.gender,
  'age': instance.age,
  'city': instance.city,
  'photo': instance.avatarUrl,
  'status': instance.isVerified,
  'tags': instance.tags,
  'is_owner': instance.isOwner,
};
