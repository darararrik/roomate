import 'package:domain/domain.dart';

import 'package:data/data.dart';

@BackendOnly('Maps create-group form data into nested backend contract.')
abstract class CreateGroupFormMapper {
  static CreateGroupFormRequestData toDto(CreateGroupFormModel model) {
    final title = model.title.trim();
    final description = model.description.trim();

    return CreateGroupFormRequestData(
      group: CreateGroupGroupRequestData(
        title: title,
        description: description,
        desiredGender: _mapDesiredGender(model.lookingForGenderId),
        minAge: model.ageFrom,
        maxAge: model.ageTo,
        maxParticipantsCount: model.participantsCount,
        childrenAllowed: model.childrenAllowed,
        partnerAllowed: model.partnerAllowed,
        petsAllowed: model.petsAllowed,
        smokingAllowed: model.smokingAllowed,
      ),
      apartment: CreateGroupApartmentRequestData(
        addressDetails: _mapAddressDetails(model.addressDetails),
        propertyTypeId: model.propertyTypeId,
        roomsCountId: model.roomsCountId,
        furnitureId: model.furnitureId,
        amenitiesIds: _ids(model.amenitiesIds),
        bathroomIds: _ids(model.bathroomIds),
        appliancesIds: _ids(model.appliancesIds),
        currencyId: model.currencyId,
        rentDurationId: model.rentDurationId,
        selectedCurrency: _mapSelectedCurrency(model.selectedCurrency),
        pricePerPerson: model.pricePerPerson,
        apartmentArea: model.apartmentArea,
        floor: model.floor,
        totalFloors: model.totalFloors,
        apartmentNumber: _parseApartmentNumber(model.apartmentNumber),
        title: title,
        description: description,
        imageUrls: model.imageUrls,
      ),
      preferences: CreateGroupPreferencesRequestData(
        communicationId: model.communicationId,
        sleepId: model.sleepId,
        badHabitsId: model.badHabitsId,
        guestsId: model.guestsId,
        noiseLevelId: model.noiseLevelId,
        cleaningId: model.cleaningId,
        petsId: model.petsId,
        petsAttitudeId: model.petsAttitudeId,
      ),
    );
  }

  static CreateGroupAddressDetailsRequestData _mapAddressDetails(
    LocationSuggestionModel details,
  ) {
    return CreateGroupAddressDetailsRequestData(
      value: _emptyToNull(details.value),
      unrestrictedValue: _emptyToNull(details.unrestrictedValue),
      country: _emptyToNull(details.country),
      region: _emptyToNull(details.region),
      city: _emptyToNull(details.city),
      cityFiasId: _emptyToNull(details.cityFiasId),
      district: _emptyToNull(details.district),
      street: _emptyToNull(details.street),
      streetFiasId: _emptyToNull(details.streetFiasId),
      house: _emptyToNull(details.house),
      houseFiasId: _emptyToNull(details.houseFiasId),
      geoLat: details.geoLat,
      geoLon: details.geoLon,
    );
  }

  static String _mapDesiredGender(int id) {
    return switch (id) {
      1 => 'male',
      2 => 'female',
      3 => 'any',
      _ => throw StateError('Unsupported desired gender id: $id'),
    };
  }

  static List<int> _ids(Set<int> ids) => ids.toList();

  static CreateGroupSelectedCurrencyRequestData _mapSelectedCurrency(
    Currency currency,
  ) {
    final code = currency.name.toUpperCase();
    return CreateGroupSelectedCurrencyRequestData(code: code, symbol: code);
  }

  static int _parseApartmentNumber(String value) {
    final normalized = value.trim();
    final apartmentNumber = int.tryParse(normalized);
    if (apartmentNumber == null) {
      throw StateError('Apartment number must be numeric: $value');
    }

    return apartmentNumber;
  }

  static String? _emptyToNull(String? value) {
    final normalized = (value ?? '').trim();
    return normalized.isEmpty ? null : normalized;
  }
}
