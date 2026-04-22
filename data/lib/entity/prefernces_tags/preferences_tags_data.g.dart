// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_tags_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreferencesTagsData _$PreferencesTagsDataFromJson(Map<String, dynamic> json) =>
    _PreferencesTagsData(
      communication: (json['communication'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      sleep: (json['sleep'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      employment: (json['employment'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      badHabits: (json['bad_habits'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      guests: (json['guests'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      noiseLevel: (json['noise_level'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      cleaning: (json['cleaning'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pets: (json['pets'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      petsAttitude: (json['pets_attitude'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreferencesTagsDataToJson(
  _PreferencesTagsData instance,
) => <String, dynamic>{
  'communication': instance.communication,
  'sleep': instance.sleep,
  'employment': instance.employment,
  'bad_habits': instance.badHabits,
  'guests': instance.guests,
  'noise_level': instance.noiseLevel,
  'cleaning': instance.cleaning,
  'pets': instance.pets,
  'pets_attitude': instance.petsAttitude,
};
