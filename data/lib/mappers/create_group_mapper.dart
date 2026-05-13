import 'package:domain/domain.dart';

import 'package:data/data.dart';

@BackendOnly('Maps create-group form data into nested backend contract.')
abstract class CreateGroupFormMapper {
  static CreateGroupFormRequestData toDto(CreateGroupFormModel model) {
    return CreateGroupFormRequestData(
      group: CreateGroupGroupRequestData(
        title: _emptyToNull(model.title),
        description: _emptyToNull(model.description),
        desired_gender: _mapDesiredGender(model.lookingForGenderId),
        min_age: model.ageFrom,
        max_age: model.ageTo,
        max_participants_count: model.participantsCount,
        children_allowed: model.childrenAllowed,
        partner_allowed: model.partnerAllowed,
        pets_allowed: model.petsAllowed,
        smoking_allowed: model.smokingAllowed,
      ),
      apartment: CreateGroupApartmentRequestData(
        address_details: _mapAddressDetails(model),
        property_type_id: _positiveInt(model.propertyTypeId),
        rooms_count_id: _positiveInt(model.roomsCountId),
        furniture_id: _positiveInt(model.furnitureId),
        amenities_ids: _ids(model.amenitiesIds),
        bathroom_ids: _ids(model.bathroomIds),
        appliances_ids: _ids(model.appliancesIds),
        currency_id: _positiveInt(model.currencyId),
        rent_duration_id: _positiveInt(model.rentDurationId),
        selected_currency: model.currencyId == 0
            ? null
            : model.selectedCurrency.name,
        price_per_person: _positiveDouble(model.pricePerPerson),
        apartment_area: _positiveDouble(model.apartmentArea),
        floor: _positiveInt(model.floor),
        total_floors: _positiveInt(model.totalFloors),
        apartment_number: _parseApartmentNumber(model.apartmentNumber),
        title: _emptyToNull(model.title),
        description: _emptyToNull(model.description),
        image_urls: model.imageUrls.isEmpty ? null : model.imageUrls,
      ),
      preferences: CreateGroupPreferencesRequestData(
        communication_id: _positiveInt(model.communicationId),
        sleep_id: _positiveInt(model.sleepId),
        bad_habits_id: _positiveInt(model.badHabitsId),
        guests_id: _positiveInt(model.guestsId),
        noise_level_id: _positiveInt(model.noiseLevelId),
        cleaning_id: _positiveInt(model.cleaningId),
        pets_id: _positiveInt(model.petsId),
        pets_attitude_id: _positiveInt(model.petsAttitudeId),
      ),
    );
  }

  static CreateGroupAddressDetailsRequestData? _mapAddressDetails(
    CreateGroupFormModel model,
  ) {
    final address = model.address.trim();
    final cityFiasId = model.cityFiasId.trim();
    if (address.isEmpty && cityFiasId.isEmpty) {
      return null;
    }

    return CreateGroupAddressDetailsRequestData(
      value: address.isEmpty ? null : address,
      unrestrictedValue: address.isEmpty ? null : address,
      cityFiasId: cityFiasId.isEmpty ? null : cityFiasId,
    );
  }

  static String? _mapDesiredGender(int id) {
    return switch (id) {
      1 => 'male',
      2 => 'female',
      3 => 'any',
      _ => null,
    };
  }

  static List<int>? _ids(Set<int> ids) {
    if (ids.isEmpty) {
      return null;
    }
    return ids.toList();
  }

  static int? _positiveInt(int value) => value > 0 ? value : null;

  static double? _positiveDouble(double value) => value > 0 ? value : null;

  static int? _parseApartmentNumber(String value) {
    final normalized = value.trim();
    if (normalized.isEmpty) {
      return null;
    }

    return int.tryParse(normalized);
  }

  static String? _emptyToNull(String value) {
    final normalized = value.trim();
    return normalized.isEmpty ? null : normalized;
  }
}
