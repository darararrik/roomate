// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_form_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGroupFormRequestData _$CreateGroupFormRequestDataFromJson(
  Map<String, dynamic> json,
) => _CreateGroupFormRequestData(
  group: CreateGroupGroupRequestData.fromJson(
    json['group'] as Map<String, dynamic>,
  ),
  apartment: CreateGroupApartmentRequestData.fromJson(
    json['apartment'] as Map<String, dynamic>,
  ),
  preferences: CreateGroupPreferencesRequestData.fromJson(
    json['preferences'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateGroupFormRequestDataToJson(
  _CreateGroupFormRequestData instance,
) => <String, dynamic>{
  'group': instance.group.toJson(),
  'apartment': instance.apartment.toJson(),
  'preferences': instance.preferences.toJson(),
};

_CreateGroupGroupRequestData _$CreateGroupGroupRequestDataFromJson(
  Map<String, dynamic> json,
) => _CreateGroupGroupRequestData(
  title: json['title'] as String?,
  description: json['description'] as String?,
  desiredGender: json['desired_gender'] as String?,
  minAge: (json['min_age'] as num?)?.toInt(),
  maxAge: (json['max_age'] as num?)?.toInt(),
  maxParticipantsCount: (json['max_participants_count'] as num?)?.toInt(),
  childrenAllowed: json['children_allowed'] as bool?,
  partnerAllowed: json['partner_allowed'] as bool?,
  petsAllowed: json['pets_allowed'] as bool?,
  smokingAllowed: json['smoking_allowed'] as bool?,
);

Map<String, dynamic> _$CreateGroupGroupRequestDataToJson(
  _CreateGroupGroupRequestData instance,
) => <String, dynamic>{
  'title': ?instance.title,
  'description': ?instance.description,
  'desired_gender': ?instance.desiredGender,
  'min_age': ?instance.minAge,
  'max_age': ?instance.maxAge,
  'max_participants_count': ?instance.maxParticipantsCount,
  'children_allowed': ?instance.childrenAllowed,
  'partner_allowed': ?instance.partnerAllowed,
  'pets_allowed': ?instance.petsAllowed,
  'smoking_allowed': ?instance.smokingAllowed,
};

_CreateGroupApartmentRequestData _$CreateGroupApartmentRequestDataFromJson(
  Map<String, dynamic> json,
) => _CreateGroupApartmentRequestData(
  addressDetails: json['address_details'] == null
      ? null
      : CreateGroupAddressDetailsRequestData.fromJson(
          json['address_details'] as Map<String, dynamic>,
        ),
  rentGoalId: (json['rent_goal_id'] as num?)?.toInt(),
  rentPeriodId: (json['rent_period_id'] as num?)?.toInt(),
  whoCanRentIds: (json['who_can_rent_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
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
      .toList(),
  bathroomIds: (json['bathroom_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  appliancesIds: (json['appliances_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  stoveId: (json['stove_id'] as num?)?.toInt(),
  currencyId: (json['currency_id'] as num?)?.toInt(),
  prepaymentId: (json['prepayment_id'] as num?)?.toInt(),
  rentDurationId: (json['rent_duration_id'] as num?)?.toInt(),
  rentConditionsIds: (json['rent_conditions_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  contactMethodId: (json['contact_method_id'] as num?)?.toInt(),
  selectedCurrency: json['selected_currency'] == null
      ? null
      : CreateGroupSelectedCurrencyRequestData.fromJson(
          json['selected_currency'] as Map<String, dynamic>,
        ),
  pricePerPerson: (json['price_per_person'] as num?)?.toDouble(),
  pricePerMonth: (json['price_per_month'] as num?)?.toDouble(),
  deposit: (json['deposit'] as num?)?.toDouble(),
  apartmentArea: (json['apartment_area'] as num?)?.toDouble(),
  floor: (json['floor'] as num?)?.toInt(),
  totalFloors: (json['total_floors'] as num?)?.toInt(),
  apartmentNumber: (json['apartment_number'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  imageUrls: (json['image_urls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mainPhone: json['main_phone'] as String?,
  additionalNumber: json['additional_number'] as String?,
);

Map<String, dynamic> _$CreateGroupApartmentRequestDataToJson(
  _CreateGroupApartmentRequestData instance,
) => <String, dynamic>{
  'address_details': ?instance.addressDetails?.toJson(),
  'rent_goal_id': ?instance.rentGoalId,
  'rent_period_id': ?instance.rentPeriodId,
  'who_can_rent_ids': ?instance.whoCanRentIds,
  'premises_type_id': ?instance.premisesTypeId,
  'property_type_id': ?instance.propertyTypeId,
  'rooms_count_id': ?instance.roomsCountId,
  'layout_id': ?instance.layoutId,
  'renovation_id': ?instance.renovationId,
  'elevators_id': ?instance.elevatorsId,
  'balconies_id': ?instance.balconiesId,
  'furniture_id': ?instance.furnitureId,
  'amenities_ids': ?instance.amenitiesIds,
  'bathroom_ids': ?instance.bathroomIds,
  'appliances_ids': ?instance.appliancesIds,
  'stove_id': ?instance.stoveId,
  'currency_id': ?instance.currencyId,
  'prepayment_id': ?instance.prepaymentId,
  'rent_duration_id': ?instance.rentDurationId,
  'rent_conditions_ids': ?instance.rentConditionsIds,
  'contact_method_id': ?instance.contactMethodId,
  'selected_currency': ?instance.selectedCurrency?.toJson(),
  'price_per_person': ?instance.pricePerPerson,
  'price_per_month': ?instance.pricePerMonth,
  'deposit': ?instance.deposit,
  'apartment_area': ?instance.apartmentArea,
  'floor': ?instance.floor,
  'total_floors': ?instance.totalFloors,
  'apartment_number': ?instance.apartmentNumber,
  'title': ?instance.title,
  'description': ?instance.description,
  'image_urls': ?instance.imageUrls,
  'main_phone': ?instance.mainPhone,
  'additional_number': ?instance.additionalNumber,
};

_CreateGroupSelectedCurrencyRequestData
_$CreateGroupSelectedCurrencyRequestDataFromJson(Map<String, dynamic> json) =>
    _CreateGroupSelectedCurrencyRequestData(
      code: json['code'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$CreateGroupSelectedCurrencyRequestDataToJson(
  _CreateGroupSelectedCurrencyRequestData instance,
) => <String, dynamic>{'code': ?instance.code, 'symbol': ?instance.symbol};

_CreateGroupAddressDetailsRequestData
_$CreateGroupAddressDetailsRequestDataFromJson(Map<String, dynamic> json) =>
    _CreateGroupAddressDetailsRequestData(
      value: json['value'] as String?,
      unrestrictedValue: json['unrestrictedValue'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      cityFiasId: json['cityFiasId'] as String?,
      district: json['district'] as String?,
      street: json['street'] as String?,
      streetFiasId: json['streetFiasId'] as String?,
      house: json['house'] as String?,
      houseFiasId: json['houseFiasId'] as String?,
      geoLat: (json['geoLat'] as num?)?.toDouble(),
      geoLon: (json['geoLon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CreateGroupAddressDetailsRequestDataToJson(
  _CreateGroupAddressDetailsRequestData instance,
) => <String, dynamic>{
  'value': ?instance.value,
  'unrestrictedValue': ?instance.unrestrictedValue,
  'country': ?instance.country,
  'region': ?instance.region,
  'city': ?instance.city,
  'cityFiasId': ?instance.cityFiasId,
  'district': ?instance.district,
  'street': ?instance.street,
  'streetFiasId': ?instance.streetFiasId,
  'house': ?instance.house,
  'houseFiasId': ?instance.houseFiasId,
  'geoLat': ?instance.geoLat,
  'geoLon': ?instance.geoLon,
};

_CreateGroupPreferencesRequestData _$CreateGroupPreferencesRequestDataFromJson(
  Map<String, dynamic> json,
) => _CreateGroupPreferencesRequestData(
  communicationId: (json['communication_id'] as num?)?.toInt(),
  sleepId: (json['sleep_id'] as num?)?.toInt(),
  badHabitsId: (json['bad_habits_id'] as num?)?.toInt(),
  guestsId: (json['guests_id'] as num?)?.toInt(),
  noiseLevelId: (json['noise_level_id'] as num?)?.toInt(),
  cleaningId: (json['cleaning_id'] as num?)?.toInt(),
  petsId: (json['pets_id'] as num?)?.toInt(),
  petsAttitudeId: (json['pets_attitude_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateGroupPreferencesRequestDataToJson(
  _CreateGroupPreferencesRequestData instance,
) => <String, dynamic>{
  'communication_id': ?instance.communicationId,
  'sleep_id': ?instance.sleepId,
  'bad_habits_id': ?instance.badHabitsId,
  'guests_id': ?instance.guestsId,
  'noise_level_id': ?instance.noiseLevelId,
  'cleaning_id': ?instance.cleaningId,
  'pets_id': ?instance.petsId,
  'pets_attitude_id': ?instance.petsAttitudeId,
};
