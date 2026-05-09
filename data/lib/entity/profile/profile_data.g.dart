// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => _ProfileData(
  id: json['id'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phone: json['phone'] as String?,
  gender: json['gender'] as String?,
  age: (json['age'] as num?)?.toInt(),
  cityId: (json['city_id'] as num?)?.toInt(),
  city: json['city'] as String?,
  avatarUrl: json['photo'] as String?,
  isVerified: json['status'] as bool?,
  preferences: json['preferences'] == null
      ? null
      : SelectedUserPreferencesData.fromJson(
          json['preferences'] as Map<String, dynamic>,
        ),
  isOwner: json['is_owner'] as bool?,
  isNewUser: json['is_new_user'] as bool?,
);

Map<String, dynamic> _$ProfileDataToJson(_ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'gender': instance.gender,
      'age': instance.age,
      'city_id': instance.cityId,
      'city': instance.city,
      'photo': instance.avatarUrl,
      'status': instance.isVerified,
      'preferences': instance.preferences,
      'is_owner': instance.isOwner,
      'is_new_user': instance.isNewUser,
    };
