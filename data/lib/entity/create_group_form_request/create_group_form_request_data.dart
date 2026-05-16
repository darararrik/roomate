import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_form_request_data.freezed.dart';
part 'create_group_form_request_data.g.dart';

@freezed
sealed class CreateGroupFormRequestData with _$CreateGroupFormRequestData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory CreateGroupFormRequestData({
    required CreateGroupGroupRequestData group,
    required CreateGroupApartmentRequestData apartment,
    required CreateGroupPreferencesRequestData preferences,
  }) = _CreateGroupFormRequestData;

  factory CreateGroupFormRequestData.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupFormRequestDataFromJson(json);
}

@freezed
sealed class CreateGroupGroupRequestData with _$CreateGroupGroupRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateGroupGroupRequestData({
    String? title,
    String? description,
    @JsonKey(name: 'desired_gender') String? desiredGender,
    @JsonKey(name: 'min_age') int? minAge,
    @JsonKey(name: 'max_age') int? maxAge,
    @JsonKey(name: 'max_participants_count') int? maxParticipantsCount,
    @JsonKey(name: 'children_allowed') bool? childrenAllowed,
    @JsonKey(name: 'partner_allowed') bool? partnerAllowed,
    @JsonKey(name: 'pets_allowed') bool? petsAllowed,
    @JsonKey(name: 'smoking_allowed') bool? smokingAllowed,
  }) = _CreateGroupGroupRequestData;

  factory CreateGroupGroupRequestData.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupGroupRequestDataFromJson(json);
}

@freezed
sealed class CreateGroupApartmentRequestData
    with _$CreateGroupApartmentRequestData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory CreateGroupApartmentRequestData({
    @JsonKey(name: 'address_details')
    CreateGroupAddressDetailsRequestData? addressDetails,
    @JsonKey(name: 'rent_goal_id') int? rentGoalId,
    @JsonKey(name: 'rent_period_id') int? rentPeriodId,
    @JsonKey(name: 'who_can_rent_ids') List<int>? whoCanRentIds,
    @JsonKey(name: 'premises_type_id') int? premisesTypeId,
    @JsonKey(name: 'property_type_id') int? propertyTypeId,
    @JsonKey(name: 'rooms_count_id') int? roomsCountId,
    @JsonKey(name: 'layout_id') int? layoutId,
    @JsonKey(name: 'renovation_id') int? renovationId,
    @JsonKey(name: 'elevators_id') int? elevatorsId,
    @JsonKey(name: 'balconies_id') int? balconiesId,
    @JsonKey(name: 'furniture_id') int? furnitureId,
    @JsonKey(name: 'amenities_ids') List<int>? amenitiesIds,
    @JsonKey(name: 'bathroom_ids') List<int>? bathroomIds,
    @JsonKey(name: 'appliances_ids') List<int>? appliancesIds,
    @JsonKey(name: 'stove_id') int? stoveId,
    @JsonKey(name: 'currency_id') int? currencyId,
    @JsonKey(name: 'prepayment_id') int? prepaymentId,
    @JsonKey(name: 'rent_duration_id') int? rentDurationId,
    @JsonKey(name: 'rent_conditions_ids') List<int>? rentConditionsIds,
    @JsonKey(name: 'contact_method_id') int? contactMethodId,
    @JsonKey(name: 'selected_currency')
    CreateGroupSelectedCurrencyRequestData? selectedCurrency,
    @JsonKey(name: 'price_per_person') double? pricePerPerson,
    @JsonKey(name: 'price_per_month') double? pricePerMonth,
    double? deposit,
    @JsonKey(name: 'apartment_area') double? apartmentArea,
    int? floor,
    @JsonKey(name: 'total_floors') int? totalFloors,
    @JsonKey(name: 'apartment_number') int? apartmentNumber,
    String? title,
    String? description,
    @JsonKey(name: 'image_urls') List<String>? imageUrls,
    @JsonKey(name: 'main_phone') String? mainPhone,
    @JsonKey(name: 'additional_number') String? additionalNumber,
  }) = _CreateGroupApartmentRequestData;

  factory CreateGroupApartmentRequestData.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupApartmentRequestDataFromJson(json);
}

@freezed
sealed class CreateGroupSelectedCurrencyRequestData
    with _$CreateGroupSelectedCurrencyRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateGroupSelectedCurrencyRequestData({
    String? code,
    String? symbol,
  }) = _CreateGroupSelectedCurrencyRequestData;

  factory CreateGroupSelectedCurrencyRequestData.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateGroupSelectedCurrencyRequestDataFromJson(json);
}

@freezed
sealed class CreateGroupAddressDetailsRequestData
    with _$CreateGroupAddressDetailsRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateGroupAddressDetailsRequestData({
    String? value,
    String? unrestrictedValue,
    String? country,
    String? region,
    String? city,
    String? cityFiasId,
    String? district,
    String? street,
    String? streetFiasId,
    String? house,
    String? houseFiasId,
    double? geoLat,
    double? geoLon,
  }) = _CreateGroupAddressDetailsRequestData;

  factory CreateGroupAddressDetailsRequestData.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateGroupAddressDetailsRequestDataFromJson(json);
}

@freezed
sealed class CreateGroupPreferencesRequestData
    with _$CreateGroupPreferencesRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateGroupPreferencesRequestData({
    @JsonKey(name: 'communication_id') int? communicationId,
    @JsonKey(name: 'sleep_id') int? sleepId,
    @JsonKey(name: 'bad_habits_id') int? badHabitsId,
    @JsonKey(name: 'guests_id') int? guestsId,
    @JsonKey(name: 'noise_level_id') int? noiseLevelId,
    @JsonKey(name: 'cleaning_id') int? cleaningId,
    @JsonKey(name: 'pets_id') int? petsId,
    @JsonKey(name: 'pets_attitude_id') int? petsAttitudeId,
  }) = _CreateGroupPreferencesRequestData;

  factory CreateGroupPreferencesRequestData.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateGroupPreferencesRequestDataFromJson(json);
}
