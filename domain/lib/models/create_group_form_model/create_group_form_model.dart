import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/currency_enum.dart';
import '../location/location_suggestion_model.dart';

part 'create_group_form_model.freezed.dart';
part 'create_group_form_model.g.dart';

@freezed
sealed class CreateGroupFormModel with _$CreateGroupFormModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory CreateGroupFormModel({
    @Default('') String title,
    @Default('') String address,
    @Default(LocationSuggestionModel()) LocationSuggestionModel addressDetails,
    @Default(0) int selectedCityId,
    @Default('') String cityFiasId,
    @Default(0) int lookingForGenderId,
    @Default(18) int ageFrom,
    @Default(60) int ageTo,
    @Default(1) int participantsCount,
    @Default(false) bool childrenAllowed,
    @Default(false) bool partnerAllowed,
    @Default(false) bool petsAllowed,
    @Default(false) bool smokingAllowed,
    @Default(0) int communicationId,
    @Default(0) int sleepId,
    @Default(0) int employmentId,
    @Default(0) int badHabitsId,
    @Default(0) int guestsId,
    @Default(0) int noiseLevelId,
    @Default(0) int cleaningId,
    @Default(0) int petsId,
    @Default(0) int petsAttitudeId,
    @Default(0) int propertyTypeId,
    @Default('') String apartmentNumber,
    @Default(0) int roomsCountId,
    @Default(0) double apartmentArea,
    @Default(0) int floor,
    @Default(0) int totalFloors,
    @Default('') String description,
    @Default(0) int furnitureId,
    @Default(<int>{}) Set<int> amenitiesIds,
    @Default(<int>{}) Set<int> bathroomIds,
    @Default(<int>{}) Set<int> appliancesIds,
    @Default(0) int currencyId,
    @Default(Currency.rub) Currency selectedCurrency,
    @Default(0) double pricePerPerson,
    @Default(0) int rentDurationId,
    @Default(0) int utilitiesPaymentId,
    @Default(<String>[]) List<String> imageUrls,
  }) = _CreateGroupFormModel;

  factory CreateGroupFormModel.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupFormModelFromJson(json);
}
