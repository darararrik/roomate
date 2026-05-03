// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterData _$FilterDataFromJson(Map<String, dynamic> json) => _FilterData(
  rentGoal: (json['rent_goal'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  propertyTypes: (json['property_type'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  roomsCounts: (json['rooms_count'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  rentDuration: (json['rent_duration'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  districts: (json['districts'] as List<dynamic>?)
      ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilterDataToJson(_FilterData instance) =>
    <String, dynamic>{
      'rent_goal': instance.rentGoal,
      'property_type': instance.propertyTypes,
      'rooms_count': instance.roomsCounts,
      'rent_duration': instance.rentDuration,
      'districts': instance.districts,
    };
