// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParticipantProfileData _$ParticipantProfileDataFromJson(
  Map<String, dynamic> json,
) => _ParticipantProfileData(
  id: json['id'] as String?,
  fullName: json['full_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  isVerified: json['is_verified'] as bool?,
  age: (json['age'] as num?)?.toInt(),
  gender: json['gender'] as String?,
  role: json['role'] as String?,
  rating: json['rating'] as String?,
  reviewsCount: (json['reviews_count'] as num?)?.toInt(),
  personalQualities: (json['personal_qualities'] as List<dynamic>?)
      ?.map((e) => GroupPreferenceItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
  householdHabits: (json['household_habits'] as List<dynamic>?)
      ?.map((e) => GroupPreferenceItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
  pets: (json['pets'] as List<dynamic>?)
      ?.map((e) => GroupPreferenceItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ParticipantProfileDataToJson(
  _ParticipantProfileData instance,
) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'avatar_url': instance.avatarUrl,
  'is_verified': instance.isVerified,
  'age': instance.age,
  'gender': instance.gender,
  'role': instance.role,
  'rating': instance.rating,
  'reviews_count': instance.reviewsCount,
  'personal_qualities': instance.personalQualities,
  'household_habits': instance.householdHabits,
  'pets': instance.pets,
};
