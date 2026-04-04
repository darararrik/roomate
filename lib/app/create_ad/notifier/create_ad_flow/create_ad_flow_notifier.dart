import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'create_ad_flow_notifier.g.dart';

@riverpod
class CreateAdFlow extends _$CreateAdFlow {
  @override
  CreateAdFlowState build() {
    return const CreateAdFlowState();
  }

  late CreateAdFormModel _formState;
  AppLocalizations get _locale => ref.l10n;

  String getStepTitle(int index) {
    return switch (index) {
      0 || 1 || 2 => _locale.newAdvertisement,
      3 => _locale.apartmentRent,
      4 => _locale.propertyData,
      5 => _locale.photoAndVideo,
      6 => _locale.apartmentFeatures,
      7 => _locale.apartmentItems,
      8 => _locale.dealTerms,
      9 => _locale.advertisementDescription,
      10 => _locale.contacts,
      11 => _locale.checkAdvertisement,
      _ => _locale.newAdvertisement,
    };
  }

  void openStreetPickerScreen() => ref.nav.push(
    LocationRoute(
      onSelected: (street) {
        ref.read(adFormProvider.notifier).selectStreet(street);
        ref.nav.pop();
      },
    ),
  );

  void nextStep(TabsRouter tabsRouter) {
    _formState = ref.read(adFormProvider);
    final step = tabsRouter.activeIndex;

    validateStep(step);

    if (!_isStepValid(step)) return;

    if (step == 11) {
      _submitForm();
      return;
    }

    tabsRouter.setActiveIndex(step + 1);
  }

  void previousStep(TabsRouter tabsRouter) {
    clearValidation();
    final prevIndex = tabsRouter.activeIndex - 1;
    if (prevIndex >= 0) {
      tabsRouter.setActiveIndex(prevIndex);
    } else if (ref.nav.canPop()) {
      ref.nav.pop();
    }
  }

  Future<void> _submitForm() async {
    // final request = _toCreateAdRequest();
    // try {
    //   await ref.read(apartamentsRepositoryProvider).createAd(request);
    //   ref.nav.replaceAll([const MainFlowRoute()]);
    // } catch (e) {
    //   // Обработка ошибок
    // }
  }

  void clearValidation() {
    state = const CreateAdFlowState();
  }

  void validateStep(int step) {
    clearValidation();

    switch (step) {
      case 0:
        _validateRentType();
        break;

      case 1:
        _validatePremisesType();
        break;

      case 2:
        _validatePropertyType();
        break;

      case 3:
        _validateLocation();
        break;

      case 4:
        _validateApartmentDetails();
        break;

      case 6:
        _validateFeatures();
        break;

      case 7:
        _validateItems();
        break;

      case 8:
        _validateDealTerms();
        break;

      case 9:
        _validateDescription();
        break;

      case 10:
        _validateContacts();
        break;
    }
  }

  void _validateRentType() {
    final rentType = _formState.rentGoalId;
    final rentPeriod = _formState.rentPeriodId;
    final whoCanRent = _formState.whoCanRentIds;

    if (rentType == 0) {
      state = state.copyWith(rentGoalError: _locale.validationSelectOption);
    }
    if (rentPeriod == 0) {
      state = state.copyWith(rentPeriodError: _locale.validationSelectOption);
    }
    if (whoCanRent.isEmpty) {
      state = state.copyWith(whoCanRentError: _locale.validationSelectAtLeastOne);
    }
  }

  void _validatePremisesType() {
    if (_formState.premisesTypeId == 0) {
      state = state.copyWith(premisesError: _locale.validationSelectOption);
    }
  }

  void _validatePropertyType() {
    if (_formState.propertyTypeId == 0) {
      state = state.copyWith(propertyError: _locale.validationSelectOption);
    }
  }

  void _validateLocation() {
    if (_formState.selectedStreetId == 0) {
      state = state.copyWith(streetError: _locale.validationPickStreet);
    }
    if (_formState.apartmentNumber == 0) {
      state = state.copyWith(apartmentNumberError: _locale.validationEnterApartmentNumber);
    }
  }

  void _validateApartmentDetails() {
    if (_formState.roomsCountId == 0) {
      state = state.copyWith(roomsError: _locale.validationSelectOption);
    }

    if (_formState.layoutId == 0) {
      state = state.copyWith(layoutError: _locale.validationSelectOption);
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
      state = state.copyWith(floorError: _locale.validationFloorMustBeLessThenTotalFloors);
    }
  }

  void _validateFeatures() {
    if (_formState.renovationId == 0) {
      state = state.copyWith(renovationError: _locale.validationSelectOption);
    }

    if (_formState.elevatorsId == 0) {
      state = state.copyWith(elevatorsError: _locale.validationSelectOption);
    }

    if (_formState.balconiesId == 0) {
      state = state.copyWith(balconiesError: _locale.validationSelectOption);
    }
  }

  void _validateItems() {
    if (_formState.furnitureId == 0) {
      state = state.copyWith(furnitureError: _locale.validationSelectOption);
    }

    if (_formState.amenitiesIds.isEmpty) {
      state = state.copyWith(amenitiesError: _locale.validationSelectAtLeastOne);
    }

    if (_formState.bathroomIds.isEmpty) {
      state = state.copyWith(bathroomError: _locale.validationSelectAtLeastOne);
    }

    if (_formState.appliancesIds.isEmpty) {
      state = state.copyWith(appliancesError: _locale.validationSelectAtLeastOne);
    }

    if (_formState.stoveId == 0) {
      state = state.copyWith(stoveError: _locale.validationSelectOption);
    }
  }

  void _validateDealTerms() {
    if (_formState.currencyId == 0) {
      state = state.copyWith(currencyError: _locale.validationSelectOption);
    }

    if (_formState.cost <= 0) {
      state = state.copyWith(priceError: _locale.validationEnterPrice);
    }

    if (_formState.deposit <= 0) {
      state = state.copyWith(depositError: _locale.validationEnterDeposit);
    }

    if (_formState.prepaymentId == 0) {
      state = state.copyWith(prepaymentError: _locale.validationSelectOption);
    }

    if (_formState.rentDurationId == 0) {
      state = state.copyWith(rentDurationError: _locale.validationSelectOption);
    }

    if (_formState.rentConditionsIds.isEmpty) {
      state = state.copyWith(rentConditionsError: _locale.validationSelectAtLeastOne);
    }
  }

  void _validateDescription() {
    if (_formState.title.trim().isEmpty) {
      state = state.copyWith(titleError: _locale.validationEnterTitle);
    }

    if (_formState.description.trim().length < 10) {
      state = state.copyWith(descriptionError: _locale.validationEnterDescription);
    }
  }

  void _validateContacts() {
    final contactMethodId = _formState.contactMethodId;

    final options = ref.read(getAdFormOptionsProvider);
    final firstOptionId = options.maybeWhen(
      data: (data) => data.contactMethod.isNotEmpty ? data.contactMethod.first.id : null,
      orElse: () => null,
    );

    if (contactMethodId == 0) {
      state = state.copyWith(contactMethodError: _locale.validationContactMethod);
      return;
    }

    if (contactMethodId == firstOptionId) {
      if (_formState.additionalNumber.trim().isEmpty) {
        state = state.copyWith(additionalPhoneError: _locale.validationAdditionalPhone);
      }
    }
  }

  bool _isStepValid(int step) {
    switch (step) {
      case 0:
        return state.rentGoalError.isEmpty &&
            state.rentPeriodError.isEmpty &&
            state.whoCanRentError.isEmpty;

      case 1:
        return state.premisesError.isEmpty;

      case 2:
        return state.propertyError.isEmpty;

      case 3:
        return state.streetError.isEmpty;

      case 4:
        return state.roomsError.isEmpty &&
            state.layoutError.isEmpty &&
            state.areaError.isEmpty &&
            state.floorError.isEmpty &&
            state.totalFloorsError.isEmpty;

      case 6:
        return state.renovationError.isEmpty &&
            state.elevatorsError.isEmpty &&
            state.balconiesError.isEmpty;

      case 7:
        return state.furnitureError.isEmpty &&
            state.amenitiesError.isEmpty &&
            state.bathroomError.isEmpty &&
            state.appliancesError.isEmpty &&
            state.stoveError.isEmpty;

      case 8:
        return state.currencyError.isEmpty &&
            state.priceError.isEmpty &&
            state.prepaymentError.isEmpty &&
            state.rentDurationError.isEmpty &&
            state.rentConditionsError.isEmpty;

      case 9:
        return state.titleError.isEmpty && state.descriptionError.isEmpty;

      case 10:
        return state.contactMethodError.isEmpty && state.additionalPhoneError.isEmpty;
    }

    return true;
  }
}
