// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_form_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAdFormRequestData _$CreateAdFormRequestDataFromJson(
  Map<String, dynamic> json,
) => _CreateAdFormRequestData(
  rentGoalId: (json['rent_goal_id'] as num?)?.toInt(),
  rentPeriodId: (json['rent_period_id'] as num?)?.toInt(),
  whoCanRentIds: (json['who_can_rent_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toSet(),
  premisesTypeId: (json['premises_type_id'] as num?)?.toInt(),
  propertyTypeId: (json['property_type_id'] as num?)?.toInt(),
  roomsCountId: (json['rooms_count_id'] as num?)?.toInt(),
  layoutId: (json['layout_id'] as num?)?.toInt(),
  renovationId: (json['renovation_id'] as num?)?.toInt(),
  elevatorsId: (json['elevators_id'] as num?)?.toInt(),
  balconiesId: (json['balconies_id'] as num?)?.toInt(),
  furnitureId: (json['furniture_id'] as num?)?.toInt(),
  amenitiesIds: (json['amenities_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toSet(),
  bathroomIds: (json['bathroom_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toSet(),
  appliancesIds: (json['appliances_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toSet(),
  stoveId: (json['stove_id'] as num?)?.toInt(),
  currencyId: (json['currency_id'] as num?)?.toInt(),
  prepaymentId: (json['prepayment_id'] as num?)?.toInt(),
  rentDurationId: (json['rent_duration_id'] as num?)?.toInt(),
  rentConditionsIds: (json['rent_conditions_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toSet(),
  contactMethodId: (json['contact_method_id'] as num?)?.toInt(),
  selectedCurrency: $enumDecodeNullable(
    _$CurrencyEnumMap,
    json['selected_currency'],
  ),
  cost: (json['cost'] as num?)?.toDouble(),
  deposit: (json['deposit'] as num?)?.toDouble(),
  apartmentArea: (json['apartment_area'] as num?)?.toDouble(),
  floor: (json['floor'] as num?)?.toInt(),
  totalFloors: (json['total_floors'] as num?)?.toInt(),
  address: json['address'] as String?,
  apartmentNumber: (json['apartment_number'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  mainPhone: json['main_phone'] as String?,
  additionalNumber: json['additional_number'] as String?,
);

Map<String, dynamic> _$CreateAdFormRequestDataToJson(
  _CreateAdFormRequestData instance,
) => <String, dynamic>{
  'rent_goal_id': instance.rentGoalId,
  'rent_period_id': instance.rentPeriodId,
  'who_can_rent_ids': instance.whoCanRentIds?.toList(),
  'premises_type_id': instance.premisesTypeId,
  'property_type_id': instance.propertyTypeId,
  'rooms_count_id': instance.roomsCountId,
  'layout_id': instance.layoutId,
  'renovation_id': instance.renovationId,
  'elevators_id': instance.elevatorsId,
  'balconies_id': instance.balconiesId,
  'furniture_id': instance.furnitureId,
  'amenities_ids': instance.amenitiesIds?.toList(),
  'bathroom_ids': instance.bathroomIds?.toList(),
  'appliances_ids': instance.appliancesIds?.toList(),
  'stove_id': instance.stoveId,
  'currency_id': instance.currencyId,
  'prepayment_id': instance.prepaymentId,
  'rent_duration_id': instance.rentDurationId,
  'rent_conditions_ids': instance.rentConditionsIds?.toList(),
  'contact_method_id': instance.contactMethodId,
  'selected_currency': _$CurrencyEnumMap[instance.selectedCurrency],
  'cost': instance.cost,
  'deposit': instance.deposit,
  'apartment_area': instance.apartmentArea,
  'floor': instance.floor,
  'total_floors': instance.totalFloors,
  'address': instance.address,
  'apartment_number': instance.apartmentNumber,
  'title': instance.title,
  'description': instance.description,
  'main_phone': instance.mainPhone,
  'additional_number': instance.additionalNumber,
};

const _$CurrencyEnumMap = {
  Currency.rub: 'rub',
  Currency.usd: 'usd',
  Currency.eur: 'eur',
};
