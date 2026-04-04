import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/enums/currency_enum.dart';

part 'create_ad_form_model.freezed.dart';

@freezed
sealed class CreateAdFormModel with _$CreateAdFormModel {
  const factory CreateAdFormModel({
    @Default(0) int rentGoalId,
    @Default(0) int rentPeriodId,
    @Default(<int>{}) Set<int> whoCanRentIds,

    @Default(0) int premisesTypeId,
    @Default(0) int propertyTypeId,

    @Default(0) int roomsCountId,
    @Default(0) int layoutId,

    @Default(0) int renovationId,
    @Default(0) int elevatorsId,
    @Default(0) int balconiesId,

    @Default(0) int furnitureId,
    @Default(<int>{}) Set<int> amenitiesIds,
    @Default(<int>{}) Set<int> bathroomIds,
    @Default(<int>{}) Set<int> appliancesIds,
    @Default(0) int stoveId,

    @Default(0) int currencyId,
    @Default(0) int prepaymentId,
    @Default(0) int rentDurationId,
    @Default(<int>{}) Set<int> rentConditionsIds,

    @Default(0) int contactMethodId,

    @Default(Currency.rub) Currency selectedCurrency,
    @Default(0) double cost,
    @Default(0) double deposit,
    @Default(0) double apartmentArea,
    @Default(0) int floor,
    @Default(0) int totalFloors,
    @Default("") String address,
    @Default(0) int apartmentNumber,
    @Default("") String title,
    @Default("") String description,
    @Default("") String mainPhone,
    @Default("") String additionalNumber,
  }) = _CreateAdFormModel;
}
