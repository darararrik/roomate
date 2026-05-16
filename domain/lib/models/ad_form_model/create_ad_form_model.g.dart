// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAdFormModel _$CreateAdFormModelFromJson(Map<String, dynamic> json) =>
    _CreateAdFormModel(
      rentGoalId: (json['rentGoalId'] as num?)?.toInt() ?? 0,
      rentPeriodId: (json['rentPeriodId'] as num?)?.toInt() ?? 0,
      whoCanRentIds:
          (json['whoCanRentIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      premisesTypeId: (json['premisesTypeId'] as num?)?.toInt() ?? 0,
      propertyTypeId: (json['propertyTypeId'] as num?)?.toInt() ?? 0,
      roomsCountId: (json['roomsCountId'] as num?)?.toInt() ?? 0,
      layoutId: (json['layoutId'] as num?)?.toInt() ?? 0,
      renovationId: (json['renovationId'] as num?)?.toInt() ?? 0,
      elevatorsId: (json['elevatorsId'] as num?)?.toInt() ?? 0,
      balconiesId: (json['balconiesId'] as num?)?.toInt() ?? 0,
      furnitureId: (json['furnitureId'] as num?)?.toInt() ?? 0,
      amenitiesIds:
          (json['amenitiesIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      bathroomIds:
          (json['bathroomIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      appliancesIds:
          (json['appliancesIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      stoveId: (json['stoveId'] as num?)?.toInt() ?? 0,
      currencyId: (json['currencyId'] as num?)?.toInt() ?? 0,
      prepaymentId: (json['prepaymentId'] as num?)?.toInt() ?? 0,
      rentDurationId: (json['rentDurationId'] as num?)?.toInt() ?? 0,
      rentConditionsIds:
          (json['rentConditionsIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      contactMethodId: (json['contactMethodId'] as num?)?.toInt() ?? 0,
      selectedCurrency:
          $enumDecodeNullable(_$CurrencyEnumMap, json['selectedCurrency']) ??
          Currency.rub,
      cost: (json['cost'] as num?)?.toDouble() ?? 0,
      deposit: (json['deposit'] as num?)?.toDouble() ?? 0,
      apartmentArea: (json['apartmentArea'] as num?)?.toDouble() ?? 0,
      floor: (json['floor'] as num?)?.toInt() ?? 0,
      totalFloors: (json['totalFloors'] as num?)?.toInt() ?? 0,
      address: json['address'] as String? ?? "",
      addressDetails: json['addressDetails'] == null
          ? const LocationSuggestionModel()
          : LocationSuggestionModel.fromJson(
              json['addressDetails'] as Map<String, dynamic>,
            ),
      selectedStreetId: (json['selectedStreetId'] as num?)?.toInt() ?? 0,
      apartmentNumber: (json['apartmentNumber'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      mainPhone: json['mainPhone'] as String? ?? "",
      additionalNumber: json['additionalNumber'] as String? ?? "",
    );

Map<String, dynamic> _$CreateAdFormModelToJson(_CreateAdFormModel instance) =>
    <String, dynamic>{
      'rentGoalId': instance.rentGoalId,
      'rentPeriodId': instance.rentPeriodId,
      'whoCanRentIds': instance.whoCanRentIds.toList(),
      'premisesTypeId': instance.premisesTypeId,
      'propertyTypeId': instance.propertyTypeId,
      'roomsCountId': instance.roomsCountId,
      'layoutId': instance.layoutId,
      'renovationId': instance.renovationId,
      'elevatorsId': instance.elevatorsId,
      'balconiesId': instance.balconiesId,
      'furnitureId': instance.furnitureId,
      'amenitiesIds': instance.amenitiesIds.toList(),
      'bathroomIds': instance.bathroomIds.toList(),
      'appliancesIds': instance.appliancesIds.toList(),
      'stoveId': instance.stoveId,
      'currencyId': instance.currencyId,
      'prepaymentId': instance.prepaymentId,
      'rentDurationId': instance.rentDurationId,
      'rentConditionsIds': instance.rentConditionsIds.toList(),
      'contactMethodId': instance.contactMethodId,
      'selectedCurrency': _$CurrencyEnumMap[instance.selectedCurrency]!,
      'cost': instance.cost,
      'deposit': instance.deposit,
      'apartmentArea': instance.apartmentArea,
      'floor': instance.floor,
      'totalFloors': instance.totalFloors,
      'address': instance.address,
      'addressDetails': instance.addressDetails.toJson(),
      'selectedStreetId': instance.selectedStreetId,
      'apartmentNumber': instance.apartmentNumber,
      'title': instance.title,
      'description': instance.description,
      'mainPhone': instance.mainPhone,
      'additionalNumber': instance.additionalNumber,
    };

const _$CurrencyEnumMap = {
  Currency.rub: 'rub',
  Currency.usd: 'usd',
  Currency.eur: 'eur',
};
