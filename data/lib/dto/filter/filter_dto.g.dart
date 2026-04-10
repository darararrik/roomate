// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterDto _$FilterDtoFromJson(Map<String, dynamic> json) => _FilterDto(
  rentGoal: (json['rent_goal'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  propertyTypes: (json['property_type'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  roomsCounts: (json['rooms_count'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  rentDuration: (json['rentDuration'] as List<dynamic>?)
      ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilterDtoToJson(_FilterDto instance) =>
    <String, dynamic>{
      'rent_goal': instance.rentGoal,
      'property_type': instance.propertyTypes,
      'rooms_count': instance.roomsCounts,
      'rentDuration': instance.rentDuration,
    };
