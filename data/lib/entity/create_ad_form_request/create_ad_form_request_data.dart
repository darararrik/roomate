import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ad_form_request_data.freezed.dart';
part 'create_ad_form_request_data.g.dart';

@freezed
sealed class CreateAdFormRequestData with _$CreateAdFormRequestData {
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
    @JsonKey(name: 'selected_currency') Currency? selectedCurrency,
    @JsonKey(name: 'cost') double? cost,
    @JsonKey(name: 'deposit') double? deposit,
    @JsonKey(name: 'apartment_area') double? apartmentArea,
    @JsonKey(name: 'floor') int? floor,
    @JsonKey(name: 'total_floors') int? totalFloors,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'apartment_number') int? apartmentNumber,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'main_phone') String? mainPhone,
    @JsonKey(name: 'additional_number') String? additionalNumber,
  }) = _CreateAdFormRequestData;
  factory CreateAdFormRequestData.fromJson(Map<String, dynamic> json) =>
      _$CreateAdFormRequestDataFromJson(json);
}
