// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGroupFormModel _$CreateGroupFormModelFromJson(
  Map<String, dynamic> json,
) => _CreateGroupFormModel(
  title: json['title'] as String? ?? '',
  address: json['address'] as String? ?? '',
  addressDetails: json['addressDetails'] == null
      ? const LocationSuggestionModel()
      : LocationSuggestionModel.fromJson(
          json['addressDetails'] as Map<String, dynamic>,
        ),
  selectedCityId: (json['selectedCityId'] as num?)?.toInt() ?? 0,
  cityFiasId: json['cityFiasId'] as String? ?? '',
  lookingForGenderId: (json['lookingForGenderId'] as num?)?.toInt() ?? 0,
  ageFrom: (json['ageFrom'] as num?)?.toInt() ?? 18,
  ageTo: (json['ageTo'] as num?)?.toInt() ?? 60,
  participantsCount: (json['participantsCount'] as num?)?.toInt() ?? 1,
  childrenAllowed: json['childrenAllowed'] as bool? ?? false,
  partnerAllowed: json['partnerAllowed'] as bool? ?? false,
  petsAllowed: json['petsAllowed'] as bool? ?? false,
  smokingAllowed: json['smokingAllowed'] as bool? ?? false,
  communicationId: (json['communicationId'] as num?)?.toInt() ?? 0,
  sleepId: (json['sleepId'] as num?)?.toInt() ?? 0,
  employmentId: (json['employmentId'] as num?)?.toInt() ?? 0,
  badHabitsId: (json['badHabitsId'] as num?)?.toInt() ?? 0,
  guestsId: (json['guestsId'] as num?)?.toInt() ?? 0,
  noiseLevelId: (json['noiseLevelId'] as num?)?.toInt() ?? 0,
  cleaningId: (json['cleaningId'] as num?)?.toInt() ?? 0,
  petsId: (json['petsId'] as num?)?.toInt() ?? 0,
  petsAttitudeId: (json['petsAttitudeId'] as num?)?.toInt() ?? 0,
  propertyTypeId: (json['propertyTypeId'] as num?)?.toInt() ?? 0,
  apartmentNumber: json['apartmentNumber'] as String? ?? '',
  roomsCountId: (json['roomsCountId'] as num?)?.toInt() ?? 0,
  apartmentArea: (json['apartmentArea'] as num?)?.toDouble() ?? 0,
  floor: (json['floor'] as num?)?.toInt() ?? 0,
  totalFloors: (json['totalFloors'] as num?)?.toInt() ?? 0,
  description: json['description'] as String? ?? '',
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
  currencyId: (json['currencyId'] as num?)?.toInt() ?? 0,
  selectedCurrency:
      $enumDecodeNullable(_$CurrencyEnumMap, json['selectedCurrency']) ??
      Currency.rub,
  pricePerPerson: (json['pricePerPerson'] as num?)?.toDouble() ?? 0,
  rentDurationId: (json['rentDurationId'] as num?)?.toInt() ?? 0,
  utilitiesPaymentId: (json['utilitiesPaymentId'] as num?)?.toInt() ?? 0,
  imageUrls:
      (json['imageUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$CreateGroupFormModelToJson(
  _CreateGroupFormModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'address': instance.address,
  'addressDetails': instance.addressDetails.toJson(),
  'selectedCityId': instance.selectedCityId,
  'cityFiasId': instance.cityFiasId,
  'lookingForGenderId': instance.lookingForGenderId,
  'ageFrom': instance.ageFrom,
  'ageTo': instance.ageTo,
  'participantsCount': instance.participantsCount,
  'childrenAllowed': instance.childrenAllowed,
  'partnerAllowed': instance.partnerAllowed,
  'petsAllowed': instance.petsAllowed,
  'smokingAllowed': instance.smokingAllowed,
  'communicationId': instance.communicationId,
  'sleepId': instance.sleepId,
  'employmentId': instance.employmentId,
  'badHabitsId': instance.badHabitsId,
  'guestsId': instance.guestsId,
  'noiseLevelId': instance.noiseLevelId,
  'cleaningId': instance.cleaningId,
  'petsId': instance.petsId,
  'petsAttitudeId': instance.petsAttitudeId,
  'propertyTypeId': instance.propertyTypeId,
  'apartmentNumber': instance.apartmentNumber,
  'roomsCountId': instance.roomsCountId,
  'apartmentArea': instance.apartmentArea,
  'floor': instance.floor,
  'totalFloors': instance.totalFloors,
  'description': instance.description,
  'furnitureId': instance.furnitureId,
  'amenitiesIds': instance.amenitiesIds.toList(),
  'bathroomIds': instance.bathroomIds.toList(),
  'appliancesIds': instance.appliancesIds.toList(),
  'currencyId': instance.currencyId,
  'selectedCurrency': _$CurrencyEnumMap[instance.selectedCurrency]!,
  'pricePerPerson': instance.pricePerPerson,
  'rentDurationId': instance.rentDurationId,
  'utilitiesPaymentId': instance.utilitiesPaymentId,
  'imageUrls': instance.imageUrls,
};

const _$CurrencyEnumMap = {
  Currency.rub: 'rub',
  Currency.usd: 'usd',
  Currency.eur: 'eur',
};
