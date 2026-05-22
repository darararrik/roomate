import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'create_group_flow_notifier.g.dart';

@riverpod
class CreateGroupFlow extends _$CreateGroupFlow {
  @override
  CreateGroupFlowState build() {
    return const CreateGroupFlowState();
  }

  void reset() {
    state = const CreateGroupFlowState();
  }

  late CreateGroupFormModel _formState;

  AppLocalizations get _locale => ref.l10n;

  String getStepTitle(int index) {
    return switch (index) {
      0 => _locale.createGroupTitle,
      1 || 2 => _locale.createGroupLivingConditions,
      3 => _locale.apartmentRent,
      4 => _locale.propertyData,
      5 => _locale.createGroupApartmentPhotos,
      6 => _locale.apartmentItems,
      7 => _locale.createGroupFinancialConditions,
      8 => _locale.advertisementDescription,
      9 => _locale.checkAdvertisement,
      10 => _locale.newAdvertisement,
      _ => _locale.createGroupTitle,
    };
  }

  void openLocationPickerScreen() => ref.nav.push(
    LocationRoute(
      onSelected: (selection) {
        ref.read(groupFormProvider.notifier).selectLocation(selection);
        ref.nav.pop();
      },
    ),
  );

  Future<void> nextStep(TabsRouter tabsRouter) async {
    if (state.isSubmitting) {
      return;
    }

    _formState = ref.read(groupFormProvider);
    final step = tabsRouter.activeIndex;
    validateStep(step);
    if (!_isStepValid(step)) {
      return;
    }

    if (step == 10) {
      completeFlow();
      return;
    }

    tabsRouter.setActiveIndex(step + 1);
  }

  Future<void> submitReview(TabsRouter tabsRouter) async {
    if (state.isSubmitting) {
      return;
    }

    final isSubmitted = await _submitForm();
    if (!isSubmitted) {
      return;
    }

    tabsRouter.setActiveIndex(10);
  }

  void previousStep(TabsRouter tabsRouter) {
    clearValidation();
    final previousIndex = tabsRouter.activeIndex - 1;
    if (previousIndex >= 0) {
      tabsRouter.setActiveIndex(previousIndex);
      return;
    }

    if (ref.nav.canPop()) {
      ref.nav.pop();
    }
  }

  void completeFlow() {
    ref.nav.replaceAll([const MainFlowRoute()]);
  }

  Future<bool> _submitForm() async {
    state = state.copyWith(isSubmitting: true);
    final error = await ref.read(groupFormProvider.notifier).createGroup();
    if (error != null) {
      state = state.copyWith(isSubmitting: false);
      ref.nav.showSnackBar(
        message: error.messages.isNotEmpty
            ? error.messages
            : _locale.createGroupSubmitFailed,
      );
      return false;
    }

    state = state.copyWith(isSubmitting: false);
    return true;
  }

  void clearValidation() {
    state = state.copyWith(
      validationStepIndex: -1,
      lookingForGenderError: '',
      participantsCountError: '',
      communicationError: '',
      badHabitsError: '',
      guestsError: '',
      sleepError: '',
      noiseLevelError: '',
      cleaningError: '',
      petsError: '',
      petsAttitudeError: '',
      propertyTypeError: '',
      locationError: '',
      apartmentNumberError: '',
      roomsError: '',
      areaError: '',
      floorError: '',
      totalFloorsError: '',
      photoError: '',
      furnitureError: '',
      currencyError: '',
      priceError: '',
      rentDurationError: '',
      utilitiesPaymentError: '',
      titleError: '',
      descriptionError: '',
    );
  }

  void validateStep(int step) {
    clearValidation();

    switch (step) {
      case 0:
        _validateGroupStep();
        break;
      case 1:
        _validateWhoAreYouLookingForStep();
        break;
      case 2:
        _validateAtmosphereStep();
        break;
      case 3:
        _validatePropertyDataStep();
        break;
      case 4:
        _validatePropertyParamsStep();
        break;
      case 5:
        _validatePhotoStep();
        break;
      case 6:
        _validateApartmentItemsStep();
        break;
      case 7:
        _validateFinanceStep();
        break;
      case 8:
        _validateDescriptionStep();
        break;
    }
  }

  void _validateGroupStep() {
    if (_formState.lookingForGenderId == 0) {
      state = state.copyWith(
        lookingForGenderError: _locale.validationSelectOption,
      );
    }
    if (_formState.participantsCount <= 0) {
      state = state.copyWith(
        participantsCountError: _locale.createGroupValidationEnterPeopleCount,
      );
    }
  }

  void _validateWhoAreYouLookingForStep() {
    if (_formState.communicationId == 0) {
      state = state.copyWith(
        communicationError: _locale.validationSelectOption,
      );
    }
    if (_formState.badHabitsId == 0) {
      state = state.copyWith(badHabitsError: _locale.validationSelectOption);
    }
    if (_formState.guestsId == 0) {
      state = state.copyWith(guestsError: _locale.validationSelectOption);
    }
    if (_formState.sleepId == 0) {
      state = state.copyWith(sleepError: _locale.validationSelectOption);
    }
  }

  void _validateAtmosphereStep() {
    if (_formState.noiseLevelId == 0) {
      state = state.copyWith(noiseLevelError: _locale.validationSelectOption);
    }
    if (_formState.cleaningId == 0) {
      state = state.copyWith(cleaningError: _locale.validationSelectOption);
    }
    if (_formState.petsId == 0) {
      state = state.copyWith(petsError: _locale.validationSelectOption);
    }
    if (_formState.petsAttitudeId == 0) {
      state = state.copyWith(petsAttitudeError: _locale.validationSelectOption);
    }
  }

  void _validatePropertyDataStep() {
    if (_formState.propertyTypeId == 0) {
      state = state.copyWith(propertyTypeError: _locale.validationSelectOption);
    }
    if (_formState.addressDetails.value.trim().isEmpty) {
      state = state.copyWith(locationError: _locale.validationPickStreet);
    }
    final apartmentNumber = _formState.apartmentNumber.trim();
    if (apartmentNumber.isEmpty || int.tryParse(apartmentNumber) == null) {
      state = state.copyWith(
        apartmentNumberError: _locale.validationEnterApartmentNumber,
      );
    }
  }

  void _validatePropertyParamsStep() {
    if (_formState.roomsCountId == 0) {
      state = state.copyWith(roomsError: _locale.validationSelectOption);
    }
    if (_formState.apartmentArea <= 0) {
      state = state.copyWith(areaError: _locale.validationEnterArea);
    }
    if (_formState.floor <= 0) {
      state = state.copyWith(floorError: _locale.validationEnterFloor);
    }
    if (_formState.totalFloors <= 0) {
      state = state.copyWith(totalFloorsError: _locale.validationEnterFloor);
    }
    if (_formState.floor > _formState.totalFloors) {
      state = state.copyWith(
        floorError: _locale.validationFloorMustBeLessThenTotalFloors,
      );
    }
  }

  void _validatePhotoStep() {
    if (_formState.imageUrls.isEmpty) {
      state = state.copyWith(photoError: _locale.createGroupValidationAddPhoto);
    }
  }

  void _validateApartmentItemsStep() {
    if (_formState.furnitureId == 0) {
      state = state.copyWith(furnitureError: _locale.validationSelectOption);
    }
  }

  void _validateFinanceStep() {
    if (_formState.currencyId == 0) {
      state = state.copyWith(currencyError: _locale.validationSelectOption);
    }
    if (_formState.pricePerPerson <= 0) {
      state = state.copyWith(priceError: _locale.validationEnterPrice);
    }
    if (_formState.rentDurationId == 0) {
      state = state.copyWith(rentDurationError: _locale.validationSelectOption);
    }
    if (_formState.utilitiesPaymentId == 0) {
      state = state.copyWith(
        utilitiesPaymentError: _locale.validationSelectOption,
      );
    }
  }

  void _validateDescriptionStep() {
    if (_formState.title.trim().isEmpty) {
      state = state.copyWith(titleError: _locale.validationEnterTitle);
    }
    if (_formState.description.trim().length < 50) {
      state = state.copyWith(
        descriptionError: _locale.minimumCharactersRequired,
      );
    }
  }

  bool _isStepValid(int step) {
    return switch (step) {
      0 =>
        state.lookingForGenderError.isEmpty &&
            state.participantsCountError.isEmpty,
      1 =>
        state.communicationError.isEmpty &&
            state.badHabitsError.isEmpty &&
            state.guestsError.isEmpty &&
            state.sleepError.isEmpty,
      2 =>
        state.noiseLevelError.isEmpty &&
            state.cleaningError.isEmpty &&
            state.petsError.isEmpty &&
            state.petsAttitudeError.isEmpty,
      3 =>
        state.propertyTypeError.isEmpty &&
            state.locationError.isEmpty &&
            state.apartmentNumberError.isEmpty,
      4 =>
        state.roomsError.isEmpty &&
            state.areaError.isEmpty &&
            state.floorError.isEmpty &&
            state.totalFloorsError.isEmpty,
      5 => state.photoError.isEmpty,
      6 => state.furnitureError.isEmpty,
      7 =>
        state.currencyError.isEmpty &&
            state.priceError.isEmpty &&
            state.rentDurationError.isEmpty &&
            state.utilitiesPaymentError.isEmpty,
      8 => state.titleError.isEmpty && state.descriptionError.isEmpty,
      _ => true,
    };
  }

  String confirmationParticipants(CreateGroupFormModel form) {
    return _locale.createGroupParticipantsSummary(form.participantsCount);
  }

  String confirmationPropertyType(
    CreateGroupFormModel form,
    CreateGroupFormOptionsModel options,
  ) {
    return _title(options.propertyType, form.propertyTypeId);
  }

  String confirmationLocation(CreateGroupFormModel form) {
    return form.address.trim().isEmpty
        ? _locale.notSelectedNeutral
        : form.address.trim();
  }

  String confirmationPrice(
    CreateGroupFormModel form,
    CreateGroupFormOptionsModel options,
  ) {
    if (form.pricePerPerson <= 0) {
      return _locale.notSpecified;
    }

    final title = _title(options.currency, form.currencyId);
    return '${_number(form.pricePerPerson)} ${Currency.fromTitle(title).symbol}';
  }

  String confirmationUtilities(
    CreateGroupFormModel form,
    CreateGroupFormOptionsModel options,
  ) {
    return _title(options.utilitiesPayment, form.utilitiesPaymentId);
  }

  String _title(List<OptionModel> options, int id) {
    return resolvePreferenceTitle(options: options, selectedId: id);
  }

  String _number(num value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }

    return value.toStringAsFixed(1);
  }
}
