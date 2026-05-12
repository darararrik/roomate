class CreateGroupFlowState {
  const CreateGroupFlowState({
    this.isSubmitting = false,
    this.validationStepIndex = -1,
    this.lookingForGenderError = '',
    this.participantsCountError = '',
    this.communicationError = '',
    this.badHabitsError = '',
    this.guestsError = '',
    this.sleepError = '',
    this.noiseLevelError = '',
    this.cleaningError = '',
    this.petsError = '',
    this.petsAttitudeError = '',
    this.propertyTypeError = '',
    this.locationError = '',
    this.apartmentNumberError = '',
    this.roomsError = '',
    this.areaError = '',
    this.floorError = '',
    this.totalFloorsError = '',
    this.photoError = '',
    this.furnitureError = '',
    this.currencyError = '',
    this.priceError = '',
    this.rentDurationError = '',
    this.utilitiesPaymentError = '',
    this.titleError = '',
    this.descriptionError = '',
  });

  final bool isSubmitting;
  final int validationStepIndex;
  final String lookingForGenderError;
  final String participantsCountError;
  final String communicationError;
  final String badHabitsError;
  final String guestsError;
  final String sleepError;
  final String noiseLevelError;
  final String cleaningError;
  final String petsError;
  final String petsAttitudeError;
  final String propertyTypeError;
  final String locationError;
  final String apartmentNumberError;
  final String roomsError;
  final String areaError;
  final String floorError;
  final String totalFloorsError;
  final String photoError;
  final String furnitureError;
  final String currencyError;
  final String priceError;
  final String rentDurationError;
  final String utilitiesPaymentError;
  final String titleError;
  final String descriptionError;

  CreateGroupFlowState copyWith({
    bool? isSubmitting,
    int? validationStepIndex,
    String? lookingForGenderError,
    String? participantsCountError,
    String? communicationError,
    String? badHabitsError,
    String? guestsError,
    String? sleepError,
    String? noiseLevelError,
    String? cleaningError,
    String? petsError,
    String? petsAttitudeError,
    String? propertyTypeError,
    String? locationError,
    String? apartmentNumberError,
    String? roomsError,
    String? areaError,
    String? floorError,
    String? totalFloorsError,
    String? photoError,
    String? furnitureError,
    String? currencyError,
    String? priceError,
    String? rentDurationError,
    String? utilitiesPaymentError,
    String? titleError,
    String? descriptionError,
  }) {
    return CreateGroupFlowState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      validationStepIndex: validationStepIndex ?? this.validationStepIndex,
      lookingForGenderError:
          lookingForGenderError ?? this.lookingForGenderError,
      participantsCountError:
          participantsCountError ?? this.participantsCountError,
      communicationError: communicationError ?? this.communicationError,
      badHabitsError: badHabitsError ?? this.badHabitsError,
      guestsError: guestsError ?? this.guestsError,
      sleepError: sleepError ?? this.sleepError,
      noiseLevelError: noiseLevelError ?? this.noiseLevelError,
      cleaningError: cleaningError ?? this.cleaningError,
      petsError: petsError ?? this.petsError,
      petsAttitudeError: petsAttitudeError ?? this.petsAttitudeError,
      propertyTypeError: propertyTypeError ?? this.propertyTypeError,
      locationError: locationError ?? this.locationError,
      apartmentNumberError: apartmentNumberError ?? this.apartmentNumberError,
      roomsError: roomsError ?? this.roomsError,
      areaError: areaError ?? this.areaError,
      floorError: floorError ?? this.floorError,
      totalFloorsError: totalFloorsError ?? this.totalFloorsError,
      photoError: photoError ?? this.photoError,
      furnitureError: furnitureError ?? this.furnitureError,
      currencyError: currencyError ?? this.currencyError,
      priceError: priceError ?? this.priceError,
      rentDurationError: rentDurationError ?? this.rentDurationError,
      utilitiesPaymentError:
          utilitiesPaymentError ?? this.utilitiesPaymentError,
      titleError: titleError ?? this.titleError,
      descriptionError: descriptionError ?? this.descriptionError,
    );
  }
}
