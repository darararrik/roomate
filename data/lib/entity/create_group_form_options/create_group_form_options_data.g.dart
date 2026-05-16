// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_form_options_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGroupFormOptionsData _$CreateGroupFormOptionsDataFromJson(
  Map<String, dynamic> json,
) => _CreateGroupFormOptionsData(
  lookingForGender: (json['looking_for_gender'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
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
  propertyType: (json['property_type'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  roomsCount: (json['rooms_count'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  furniture: (json['furniture'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  amenities: (json['amenities'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  bathroom: (json['bathroom'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  appliances: (json['appliances'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  currency: (json['currency'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  rentDuration: (json['rent_duration'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  utilitiesPayment: (json['utilities_payment'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateGroupFormOptionsDataToJson(
  _CreateGroupFormOptionsData instance,
) => <String, dynamic>{
  'looking_for_gender': instance.lookingForGender,
  'communication': instance.communication,
  'sleep': instance.sleep,
  'employment': instance.employment,
  'bad_habits': instance.badHabits,
  'guests': instance.guests,
  'noise_level': instance.noiseLevel,
  'cleaning': instance.cleaning,
  'pets': instance.pets,
  'pets_attitude': instance.petsAttitude,
  'property_type': instance.propertyType,
  'rooms_count': instance.roomsCount,
  'furniture': instance.furniture,
  'amenities': instance.amenities,
  'bathroom': instance.bathroom,
  'appliances': instance.appliances,
  'currency': instance.currency,
  'rent_duration': instance.rentDuration,
  'utilities_payment': instance.utilitiesPayment,
};
