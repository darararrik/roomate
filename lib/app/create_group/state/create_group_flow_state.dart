import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_flow_state.freezed.dart';

@freezed
sealed class CreateGroupFlowState with _$CreateGroupFlowState {
  const factory CreateGroupFlowState({
    @Default(false) bool isSubmitting,
    @Default(-1) int validationStepIndex,
    @Default('') String lookingForGenderError,
    @Default('') String participantsCountError,
    @Default('') String communicationError,
    @Default('') String badHabitsError,
    @Default('') String guestsError,
    @Default('') String sleepError,
    @Default('') String noiseLevelError,
    @Default('') String cleaningError,
    @Default('') String petsError,
    @Default('') String petsAttitudeError,
    @Default('') String propertyTypeError,
    @Default('') String locationError,
    @Default('') String apartmentNumberError,
    @Default('') String roomsError,
    @Default('') String areaError,
    @Default('') String floorError,
    @Default('') String totalFloorsError,
    @Default('') String photoError,
    @Default('') String furnitureError,
    @Default('') String currencyError,
    @Default('') String priceError,
    @Default('') String rentDurationError,
    @Default('') String utilitiesPaymentError,
    @Default('') String titleError,
    @Default('') String descriptionError,
  }) = _CreateGroupFlowState;
}
