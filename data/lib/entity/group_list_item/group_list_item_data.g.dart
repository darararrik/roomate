// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupListItemData _$GroupListItemDataFromJson(Map<String, dynamic> json) =>
    _GroupListItemData(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      matchPercent: (json['match_percent'] as num?)?.toInt() ?? 0,
      participantsCount: (json['participants_count'] as num?)?.toInt() ?? 0,
      maxParticipantsCount:
          (json['max_participants_count'] as num?)?.toInt() ?? 0,
      participantAvatars:
          (json['participant_avatars'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      price: json['price'] as String? ?? '',
      apartament: json['apartment'] == null
          ? const ApartamentData()
          : ApartamentData.fromJson(json['apartment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupListItemDataToJson(_GroupListItemData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'match_percent': instance.matchPercent,
      'participants_count': instance.participantsCount,
      'max_participants_count': instance.maxParticipantsCount,
      'participant_avatars': instance.participantAvatars,
      'price': instance.price,
      'apartment': instance.apartament,
    };
