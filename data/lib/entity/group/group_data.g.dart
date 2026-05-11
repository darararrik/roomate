// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupData _$GroupDataFromJson(Map<String, dynamic> json) => _GroupData(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  matchPercent: (json['match_percent'] as num?)?.toInt(),
  participantsCount: (json['participants_count'] as num?)?.toInt(),
  maxParticipantsCount: (json['max_participants_count'] as num?)?.toInt(),
  apartament: json['apartament'] == null
      ? null
      : ApartamentData.fromJson(json['apartament'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GroupDataToJson(_GroupData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'match_percent': instance.matchPercent,
      'participants_count': instance.participantsCount,
      'max_participants_count': instance.maxParticipantsCount,
      'apartament': instance.apartament,
    };
