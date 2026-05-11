// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_filter_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApartamentFilterData _$ApartamentFilterDataFromJson(
  Map<String, dynamic> json,
) => _ApartamentFilterData(
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  cityId: (json['city_id'] as num?)?.toInt(),
  goalId: (json['goal_id'] as num?)?.toInt(),
  propertyTypeIds: (json['property_type_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  roomsCountIds: (json['rooms_count_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  minPrice: (json['min_price'] as num?)?.toDouble(),
  maxPrice: (json['max_price'] as num?)?.toDouble(),
  rentDurationId: (json['rent_duration_id'] as num?)?.toInt(),
  addressQuery: json['address_query'] as String?,
  district: json['district'] as String?,
  sortBy: json['sort_by'] as String?,
  sortOrder: json['sort_order'] as String?,
);

Map<String, dynamic> _$ApartamentFilterDataToJson(
  _ApartamentFilterData instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'city_id': ?instance.cityId,
  'goal_id': ?instance.goalId,
  'property_type_ids': ?_idsToJson(instance.propertyTypeIds),
  'rooms_count_ids': ?_idsToJson(instance.roomsCountIds),
  'min_price': ?instance.minPrice,
  'max_price': ?instance.maxPrice,
  'rent_duration_id': ?instance.rentDurationId,
  'address_query': ?instance.addressQuery,
  'district': ?instance.district,
  'sort_by': ?instance.sortBy,
  'sort_order': ?instance.sortOrder,
};
