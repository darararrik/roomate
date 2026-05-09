import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ad_flow_state.freezed.dart';

@freezed
sealed class CreateAdFlowState with _$CreateAdFlowState {
  const factory CreateAdFlowState({
    @Default(false) bool isSubmitting,

    /// Шаг, для которого показываем [fieldErrors] (-1 — ошибок нет).
    @Default(-1) int validationStepIndex,

    /// step 0
    @Default('') String rentGoalError,
    @Default('') String rentPeriodError,
    @Default('') String whoCanRentError,

    /// step 1
    @Default('') String premisesError,

    /// step 2
    @Default('') String propertyError,

    /// step 3
    @Default('') String streetError,
    @Default('') String apartmentNumberError,

    /// step 4
    @Default('') String roomsError,
    @Default('') String layoutError,
    @Default('') String areaError,
    @Default('') String floorError,
    @Default('') String totalFloorsError,

    /// step 5
    @Default('') String renovationError,
    @Default('') String elevatorsError,
    @Default('') String balconiesError,

    /// step 6
    @Default('') String furnitureError,
    @Default('') String amenitiesError,
    @Default('') String bathroomError,
    @Default('') String appliancesError,
    @Default('') String stoveError,

    /// step 7
    @Default('') String currencyError,
    @Default('') String priceError,
    @Default('') String depositError,
    @Default('') String prepaymentError,
    @Default('') String rentDurationError,
    @Default('') String rentConditionsError,

    /// step 8
    @Default('') String titleError,
    @Default('') String descriptionError,

    /// step 9
    @Default('') String additionalPhoneError,
    @Default('') String contactMethodError,
  }) = _CreateAdFlowState;
}
