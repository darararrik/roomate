// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_form_options_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdFormOptionsData _$AdFormOptionsDataFromJson(Map<String, dynamic> json) =>
    _AdFormOptionsData(
      rentGoal: (json['rent_goal'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      rentPeriod: (json['rent_period'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      whoCanRent: (json['who_can_rent'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      premisesType: (json['premises_type'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      propertyType: (json['property_type'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomsCount: (json['rooms_count'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      layout: (json['layout'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      renovation: (json['renovation'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      elevators: (json['elevators'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      balconies: (json['balconies'] as List<dynamic>?)
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
      stove: (json['stove'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      currency: (json['currency'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      prepayment: (json['prepayment'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      rentDuration: (json['rent_duration'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      rentConditions: (json['rent_conditions'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactMethod: (json['contact_method'] as List<dynamic>?)
          ?.map((e) => OptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdFormOptionsDataToJson(_AdFormOptionsData instance) =>
    <String, dynamic>{
      'rent_goal': instance.rentGoal,
      'rent_period': instance.rentPeriod,
      'who_can_rent': instance.whoCanRent,
      'premises_type': instance.premisesType,
      'property_type': instance.propertyType,
      'rooms_count': instance.roomsCount,
      'layout': instance.layout,
      'renovation': instance.renovation,
      'elevators': instance.elevators,
      'balconies': instance.balconies,
      'furniture': instance.furniture,
      'amenities': instance.amenities,
      'bathroom': instance.bathroom,
      'appliances': instance.appliances,
      'stove': instance.stove,
      'currency': instance.currency,
      'prepayment': instance.prepayment,
      'rent_duration': instance.rentDuration,
      'rent_conditions': instance.rentConditions,
      'contact_method': instance.contactMethod,
    };
