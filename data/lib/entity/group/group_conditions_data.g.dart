// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_conditions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupConditionsData _$GroupConditionsDataFromJson(
  Map<String, dynamic> json,
) => _GroupConditionsData(
  groupId: json['group_id'] as String?,
  whoGroupIsLookingFor: (json['who_group_is_looking_for'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  livingRules: (json['living_rules'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  apartmentLifestyle: (json['apartment_lifestyle'] as List<dynamic>?)
      ?.map((e) => GroupPreferenceItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
  apartmentAtmosphere: (json['apartment_atmosphere'] as List<dynamic>?)
      ?.map((e) => GroupPreferenceItemData.fromJson(e as Map<String, dynamic>))
      .toList(),
  participantsCount: (json['participants_count'] as num?)?.toInt(),
  maxParticipantsCount: (json['max_participants_count'] as num?)?.toInt(),
  participants: (json['participants'] as List<dynamic>?)
      ?.map((e) => ParticipantData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupConditionsDataToJson(
  _GroupConditionsData instance,
) => <String, dynamic>{
  'group_id': instance.groupId,
  'who_group_is_looking_for': instance.whoGroupIsLookingFor,
  'living_rules': instance.livingRules,
  'apartment_lifestyle': instance.apartmentLifestyle,
  'apartment_atmosphere': instance.apartmentAtmosphere,
  'participants_count': instance.participantsCount,
  'max_participants_count': instance.maxParticipantsCount,
  'participants': instance.participants,
};
