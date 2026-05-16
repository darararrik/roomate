// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApartamentData _$ApartamentDataFromJson(Map<String, dynamic> json) =>
    _ApartamentData(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isVerification: json['is_verification'] as bool?,
      price: json['price'] as String?,
      roomsCount: json['rooms_count'] as String?,
      area: json['area'] as String?,
      floor: (json['floor'] as num?)?.toInt(),
      totalFloor: (json['total_floor'] as num?)?.toInt(),
      address: json['address'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      cityFiasId: json['city_fias_id'] as String?,
      district: json['district'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      publishDate: json['publish_date'] as String?,
      totalViewers: json['total_viewers'] as String?,
      layout: json['layout'] as String?,
      renovation: json['renovation'] as String?,
      elevatorType: json['elevator_type'] as String?,
      furnitureType: json['furniture_type'] as String?,
      balconyType: json['balcony_type'] as String?,
      stoveType: json['stove_type'] as String?,
      dealGoal: json['deal_goal'] as String?,
      rentTerm: json['rent_term'] as String?,
      whoToRent: (json['who_to_rent'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      prepaymentType: json['prepayment_type'] as String?,
      rentalPeriod: json['rental_period'] as String?,
      deposit: json['deposit'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ApartamentDataToJson(_ApartamentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_urls': instance.imageUrls,
      'is_verification': instance.isVerification,
      'price': instance.price,
      'rooms_count': instance.roomsCount,
      'area': instance.area,
      'floor': instance.floor,
      'total_floor': instance.totalFloor,
      'address': instance.address,
      'city_id': instance.cityId,
      'city_fias_id': instance.cityFiasId,
      'district': instance.district,
      'name': instance.name,
      'role': instance.role,
      'publish_date': instance.publishDate,
      'total_viewers': instance.totalViewers,
      'layout': instance.layout,
      'renovation': instance.renovation,
      'elevator_type': instance.elevatorType,
      'furniture_type': instance.furnitureType,
      'balcony_type': instance.balconyType,
      'stove_type': instance.stoveType,
      'deal_goal': instance.dealGoal,
      'rent_term': instance.rentTerm,
      'who_to_rent': instance.whoToRent,
      'prepayment_type': instance.prepaymentType,
      'rental_period': instance.rentalPeriod,
      'deposit': instance.deposit,
      'amenities': instance.amenities,
    };
