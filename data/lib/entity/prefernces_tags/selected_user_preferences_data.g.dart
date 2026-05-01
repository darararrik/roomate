// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_user_preferences_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SelectedUserPreferencesData _$SelectedUserPreferencesDataFromJson(
  Map<String, dynamic> json,
) => _SelectedUserPreferencesData(
  communication: (json['communication'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  sleep: (json['sleep'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  employment: (json['employment'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  badHabits: (json['bad_habits'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  guests: (json['guests'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  noiseLevel: (json['noise_level'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  cleaning: (json['cleaning'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  pets: (json['pets'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  petsAttitude: (json['pets_attitude'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$SelectedUserPreferencesDataToJson(
  _SelectedUserPreferencesData instance,
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
