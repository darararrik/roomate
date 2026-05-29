// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupDetailData _$GroupDetailDataFromJson(Map<String, dynamic> json) =>
    _GroupDetailData(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      status: json['status'] as String? ?? '',
      matchPercent: (json['match_percent'] as num?)?.toInt() ?? 0,
      applicationStatus: json['application_status'] as String? ?? '',
      ownerUserId: json['owner_user_id'] as String? ?? '',
      participantsCount: (json['participants_count'] as num?)?.toInt() ?? 0,
      maxParticipantsCount:
          (json['max_participants_count'] as num?)?.toInt() ?? 0,
      apartament: json['apartment'] == null
          ? const ApartamentData()
          : ApartamentData.fromJson(json['apartment'] as Map<String, dynamic>),
      conditions: json['conditions'] == null
          ? const GroupDetailConditionsData()
          : GroupDetailConditionsData.fromJson(
              json['conditions'] as Map<String, dynamic>,
            ),
      preferences: json['preferences'] == null
          ? const GroupDetailPreferencesData()
          : GroupDetailPreferencesData.fromJson(
              json['preferences'] as Map<String, dynamic>,
            ),
      participants:
          (json['participants'] as List<dynamic>?)
              ?.map((e) => ParticipantData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ParticipantData>[],
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      isFavorite: json['favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$GroupDetailDataToJson(_GroupDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'match_percent': instance.matchPercent,
      'application_status': instance.applicationStatus,
      'owner_user_id': instance.ownerUserId,
      'participants_count': instance.participantsCount,
      'max_participants_count': instance.maxParticipantsCount,
      'apartment': instance.apartament,
      'conditions': instance.conditions,
      'preferences': instance.preferences,
      'participants': instance.participants,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'favorite': instance.isFavorite,
    };

_GroupDetailConditionsData _$GroupDetailConditionsDataFromJson(
  Map<String, dynamic> json,
) => _GroupDetailConditionsData(
  desiredGender: json['desired_gender'] as String?,
  minAge: (json['min_age'] as num?)?.toInt(),
  maxAge: (json['max_age'] as num?)?.toInt(),
  childrenAllowed: json['children_allowed'] as bool?,
  partnerAllowed: json['partner_allowed'] as bool?,
  petsAllowed: json['pets_allowed'] as bool?,
  smokingAllowed: json['smoking_allowed'] as bool?,
);

Map<String, dynamic> _$GroupDetailConditionsDataToJson(
  _GroupDetailConditionsData instance,
) => <String, dynamic>{
  'desired_gender': instance.desiredGender,
  'min_age': instance.minAge,
  'max_age': instance.maxAge,
  'children_allowed': instance.childrenAllowed,
  'partner_allowed': instance.partnerAllowed,
  'pets_allowed': instance.petsAllowed,
  'smoking_allowed': instance.smokingAllowed,
};

_GroupDetailPreferencesData _$GroupDetailPreferencesDataFromJson(
  Map<String, dynamic> json,
) => _GroupDetailPreferencesData(
  communication: json['communication'] == null
      ? null
      : OptionData.fromJson(json['communication'] as Map<String, dynamic>),
  sleep: json['sleep'] == null
      ? null
      : OptionData.fromJson(json['sleep'] as Map<String, dynamic>),
  badHabits: json['bad_habits'] == null
      ? null
      : OptionData.fromJson(json['bad_habits'] as Map<String, dynamic>),
  guests: json['guests'] == null
      ? null
      : OptionData.fromJson(json['guests'] as Map<String, dynamic>),
  noiseLevel: json['noise_level'] == null
      ? null
      : OptionData.fromJson(json['noise_level'] as Map<String, dynamic>),
  cleaning: json['cleaning'] == null
      ? null
      : OptionData.fromJson(json['cleaning'] as Map<String, dynamic>),
  pets: json['pets'] == null
      ? null
      : OptionData.fromJson(json['pets'] as Map<String, dynamic>),
  petsAttitude: json['pets_attitude'] == null
      ? null
      : OptionData.fromJson(json['pets_attitude'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GroupDetailPreferencesDataToJson(
  _GroupDetailPreferencesData instance,
) => <String, dynamic>{
  'communication': instance.communication,
  'sleep': instance.sleep,
  'bad_habits': instance.badHabits,
  'guests': instance.guests,
  'noise_level': instance.noiseLevel,
  'cleaning': instance.cleaning,
  'pets': instance.pets,
  'pets_attitude': instance.petsAttitude,
};

_ParticipantData _$ParticipantDataFromJson(Map<String, dynamic> json) =>
    _ParticipantData(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$ParticipantDataToJson(_ParticipantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'role': instance.role,
      'status': instance.status,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'age': instance.age,
      'gender': instance.gender,
      'avatar_url': instance.avatarUrl,
      'is_verified': instance.isVerified,
    };
