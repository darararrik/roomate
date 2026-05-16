// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParticipantProfileData _$ParticipantProfileDataFromJson(
  Map<String, dynamic> json,
) => _ParticipantProfileData(
  id: json['id'] as String? ?? '',
  userId: json['user_id'] as String? ?? '',
  role: json['role'] as String? ?? '',
  status: json['status'] as String? ?? '',
  firstName: json['first_name'] as String? ?? '',
  lastName: json['last_name'] as String? ?? '',
  fullName: json['full_name'] as String? ?? '',
  age: (json['age'] as num?)?.toInt() ?? 0,
  gender: json['gender'] as String? ?? '',
  city: json['city'] as String? ?? '',
  cityFiasId: json['city_fias_id'] as String? ?? '',
  avatarUrl: json['avatar_url'] as String? ?? '',
  about: json['about'] as String? ?? '',
  rating: json['rating'] as num? ?? 0,
  reviewsCount: (json['reviews_count'] as num?)?.toInt() ?? 0,
  targetApartment: json['target_apartment'] == null
      ? const TargetApartmentData()
      : TargetApartmentData.fromJson(
          json['target_apartment'] as Map<String, dynamic>,
        ),
  questionnaire: json['questionnaire'] == null
      ? const ParticipantQuestionnaireData()
      : ParticipantQuestionnaireData.fromJson(
          json['questionnaire'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ParticipantProfileDataToJson(
  _ParticipantProfileData instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'role': instance.role,
  'status': instance.status,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'full_name': instance.fullName,
  'age': instance.age,
  'gender': instance.gender,
  'city': instance.city,
  'city_fias_id': instance.cityFiasId,
  'avatar_url': instance.avatarUrl,
  'about': instance.about,
  'rating': instance.rating,
  'reviews_count': instance.reviewsCount,
  'target_apartment': instance.targetApartment,
  'questionnaire': instance.questionnaire,
};

_TargetApartmentData _$TargetApartmentDataFromJson(Map<String, dynamic> json) =>
    _TargetApartmentData(
      title: json['title'] as String? ?? '',
      price: json['price'] as String? ?? '',
      roomsCount: json['rooms_count'] as String? ?? '',
      area: json['area'] as String? ?? '',
      floor: (json['floor'] as num?)?.toInt() ?? 0,
      totalFloor: (json['total_floor'] as num?)?.toInt() ?? 0,
      address: json['address'] as String? ?? '',
    );

Map<String, dynamic> _$TargetApartmentDataToJson(
  _TargetApartmentData instance,
) => <String, dynamic>{
  'title': instance.title,
  'price': instance.price,
  'rooms_count': instance.roomsCount,
  'area': instance.area,
  'floor': instance.floor,
  'total_floor': instance.totalFloor,
  'address': instance.address,
};

_ParticipantQuestionnaireData _$ParticipantQuestionnaireDataFromJson(
  Map<String, dynamic> json,
) => _ParticipantQuestionnaireData(
  personalTraits:
      (json['personal_traits'] as List<dynamic>?)
          ?.map(
            (e) => ParticipantQuestionnaireItemData.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  householdHabits:
      (json['household_habits'] as List<dynamic>?)
          ?.map(
            (e) => ParticipantQuestionnaireItemData.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  pets:
      (json['pets'] as List<dynamic>?)
          ?.map(
            (e) => ParticipantQuestionnaireItemData.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$ParticipantQuestionnaireDataToJson(
  _ParticipantQuestionnaireData instance,
) => <String, dynamic>{
  'personal_traits': instance.personalTraits,
  'household_habits': instance.householdHabits,
  'pets': instance.pets,
};

_ParticipantQuestionnaireItemData _$ParticipantQuestionnaireItemDataFromJson(
  Map<String, dynamic> json,
) => _ParticipantQuestionnaireItemData(
  key: json['key'] as String? ?? '',
  title: json['title'] as String? ?? '',
  values:
      (json['values'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ParticipantQuestionnaireItemDataToJson(
  _ParticipantQuestionnaireItemData instance,
) => <String, dynamic>{
  'key': instance.key,
  'title': instance.title,
  'values': instance.values,
};
