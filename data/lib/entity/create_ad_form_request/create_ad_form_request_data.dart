import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ad_form_request_data.freezed.dart';
part 'create_ad_form_request_data.g.dart';

@freezed
sealed class CreateAdFormRequestData with _$CreateAdFormRequestData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory CreateAdFormRequestData({
    @JsonKey(name: 'rent_goal_id') int? rentGoalId,
    @JsonKey(name: 'rent_period_id') int? rentPeriodId,
    @JsonKey(name: 'who_can_rent_ids') Set<int>? whoCanRentIds,
    @JsonKey(name: 'premises_type_id') int? premisesTypeId,
    @JsonKey(name: 'property_type_id') int? propertyTypeId,
    @JsonKey(name: 'rooms_count_id') int? roomsCountId,
    @JsonKey(name: 'layout_id') int? layoutId,
    @JsonKey(name: 'renovation_id') int? renovationId,
    @JsonKey(name: 'elevators_id') int? elevatorsId,
    @JsonKey(name: 'balconies_id') int? balconiesId,
    @JsonKey(name: 'furniture_id') int? furnitureId,
    @JsonKey(name: 'amenities_ids') Set<int>? amenitiesIds,
    @JsonKey(name: 'bathroom_ids') Set<int>? bathroomIds,
    @JsonKey(name: 'appliances_ids') Set<int>? appliancesIds,
    @JsonKey(name: 'stove_id') int? stoveId,
    @JsonKey(name: 'currency_id') int? currencyId,
    @JsonKey(name: 'prepayment_id') int? prepaymentId,
    @JsonKey(name: 'rent_duration_id') int? rentDurationId,
    @JsonKey(name: 'rent_conditions_ids') Set<int>? rentConditionsIds,
    @JsonKey(name: 'contact_method_id') int? contactMethodId,
    @JsonKey(name: 'selected_currency')
    CreateAdSelectedCurrencyRequestData? selectedCurrency,
    @JsonKey(name: 'cost') double? cost,
    @JsonKey(name: 'deposit') double? deposit,
    @JsonKey(name: 'apartment_area') double? apartmentArea,
    @JsonKey(name: 'floor') int? floor,
    @JsonKey(name: 'total_floors') int? totalFloors,
    @JsonKey(name: 'address_details')
    CreateAdAddressDetailsRequestData? addressDetails,
    @JsonKey(name: 'apartment_number') int? apartmentNumber,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'main_phone') String? mainPhone,
    @JsonKey(name: 'additional_number') String? additionalNumber,
  }) = _CreateAdFormRequestData;
  factory CreateAdFormRequestData.fromJson(Map<String, dynamic> json) =>
      _$CreateAdFormRequestDataFromJson(json);
}

@freezed
sealed class CreateAdSelectedCurrencyRequestData
    with _$CreateAdSelectedCurrencyRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateAdSelectedCurrencyRequestData({
    String? code,
    String? symbol,
  }) = _CreateAdSelectedCurrencyRequestData;

  factory CreateAdSelectedCurrencyRequestData.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateAdSelectedCurrencyRequestDataFromJson(json);
}

@freezed
sealed class CreateAdAddressDetailsRequestData
    with _$CreateAdAddressDetailsRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory CreateAdAddressDetailsRequestData({
    String? value,
    @JsonKey(name: 'unrestricted_value') String? unrestrictedValue,
    String? country,
    String? region,
    String? city,
    @JsonKey(name: 'city_fias_id') String? cityFiasId,
    String? district,
    String? street,
    @JsonKey(name: 'street_fias_id') String? streetFiasId,
    String? house,
    @JsonKey(name: 'house_fias_id') String? houseFiasId,
    @JsonKey(name: 'geo_lat') double? geoLat,
    @JsonKey(name: 'geo_lon') double? geoLon,
  }) = _CreateAdAddressDetailsRequestData;

  factory CreateAdAddressDetailsRequestData.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateAdAddressDetailsRequestDataFromJson(json);
}
