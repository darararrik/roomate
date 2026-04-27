// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: json['id'] as String?,
  phone: json['phone'] as String?,
  role: json['role'] as String?,
  isNewUser: json['is_new_user'] as bool?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'phone': instance.phone,
  'role': instance.role,
  'is_new_user': instance.isNewUser,
};
