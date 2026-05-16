// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_filter_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupFilterData _$GroupFilterDataFromJson(Map<String, dynamic> json) =>
    _GroupFilterData(
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      cityFiasId: json['city_fias_id'] as String?,
      district: json['district'] as String?,
      desiredGender: json['desired_gender'] as String?,
      minAge: (json['min_age'] as num?)?.toInt(),
      maxAge: (json['max_age'] as num?)?.toInt(),
      minParticipantsCount: (json['min_participants_count'] as num?)?.toInt(),
      maxParticipantsCount: (json['max_participants_count'] as num?)?.toInt(),
      smartQuery: json['smart_query'] as String?,
      propertyTypeIds: (json['property_type_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      roomsCountIds: (json['rooms_count_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      minPrice: (json['min_price'] as num?)?.toDouble(),
      maxPrice: (json['max_price'] as num?)?.toDouble(),
      rentDurationId: (json['rent_duration_id'] as num?)?.toInt(),
      sortBy: json['sort_by'] as String?,
      sortOrder: json['sort_order'] as String?,
      utilitiesPaymentId: (json['utilities_payment_id'] as num?)?.toInt(),
      childrenAllowed: json['children_allowed'] as bool?,
      partnerAllowed: json['partner_allowed'] as bool?,
      petsAllowed: json['pets_allowed'] as bool?,
      smokingAllowed: json['smoking_allowed'] as bool?,
      utilitiesPaid: json['utilities_paid'] as bool?,
    );

Map<String, dynamic> _$GroupFilterDataToJson(_GroupFilterData instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'city_fias_id': ?instance.cityFiasId,
      'district': ?instance.district,
      'desired_gender': ?instance.desiredGender,
      'min_age': ?instance.minAge,
      'max_age': ?instance.maxAge,
      'min_participants_count': ?instance.minParticipantsCount,
      'max_participants_count': ?instance.maxParticipantsCount,
      'smart_query': ?instance.smartQuery,
      'property_type_ids': ?_idsToJson(instance.propertyTypeIds),
      'rooms_count_ids': ?_idsToJson(instance.roomsCountIds),
      'min_price': ?instance.minPrice,
      'max_price': ?instance.maxPrice,
      'rent_duration_id': ?instance.rentDurationId,
      'sort_by': ?instance.sortBy,
      'sort_order': ?instance.sortOrder,
      'utilities_payment_id': ?instance.utilitiesPaymentId,
      'children_allowed': ?instance.childrenAllowed,
      'partner_allowed': ?instance.partnerAllowed,
      'pets_allowed': ?instance.petsAllowed,
      'smoking_allowed': ?instance.smokingAllowed,
      'utilities_paid': ?instance.utilitiesPaid,
    };
