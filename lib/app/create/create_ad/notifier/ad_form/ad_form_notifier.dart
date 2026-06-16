import 'dart:async';

import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/shared.dart';

part 'ad_form_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<AdFormOptionsModel> getAdFormOptions(Ref ref) async {
  final form = await ref
      .read(apartamentsRepositoryProvider)
      .fetchAdFormOptions();
  return form.fold((error) => throw error, (value) => value);
}

@riverpod
String selectedStreetName(Ref ref) {
  return ref.watch(adFormProvider.select((state) => state.address));
}

@Riverpod(keepAlive: true)
class AdFormNotifier extends _$AdFormNotifier {
  @override
  CreateAdFormModel build() {
    listenSelf((_, next) {
      unawaited(_syncDraft(next));
    });

    // Слушаем изменение профиля для автоматического обновления телефона
    ref.listen(globalProfileProvider, (prev, next) {
      final newPhone = next.value?.phone;
      if (newPhone != null && newPhone.isNotEmpty && state.mainPhone.isEmpty) {
        state = state.copyWith(mainPhone: newPhone);
      }
    });

    return _initialState();
  }

  CreateAdFormModel _initialState() {
    final initialPhone = ref.read(globalProfileProvider).value?.phone ?? '';
    return CreateAdFormModel(mainPhone: initialPhone);
  }

  Future<void> reset() async {
    final draftService = ref.read(createDraftServiceProvider);
    state = _initialState();
    await draftService.clearAdDraft();
    if (!ref.mounted) {
      return;
    }
    ref.invalidate(createAdDraftProvider);
  }

  void restoreDraft(CreateAdFormModel draft) {
    final initialPhone = ref.read(globalProfileProvider).value?.phone ?? '';
    state = draft.copyWith(
      mainPhone: draft.mainPhone.isEmpty ? initialPhone : draft.mainPhone,
    );
  }

  void selectCity(CityModel city) {
    state = state.copyWith(selectedStreetId: city.id, address: city.title);
  }

  void selectLocation(LocationSelectionModel selection) {
    state = state.copyWith(
      selectedStreetId: selection.cityId,
      address: selection.displayTitle,
      addressDetails: selection.addressDetails,
    );
  }

  // ----- Вспомогательный метод для Toggle (множественный выбор) -----

  void _toggleTag(Set<int> currentSet, int id, Function(Set<int>) onUpdate) {
    final newSet = Set<int>.from(currentSet);
    if (newSet.contains(id)) {
      newSet.remove(id);
    } else {
      newSet.add(id);
    }
    onUpdate(newSet);
  }

  // ----- Rent Type (Одиночный выбор + Toggle) -----

  void setRentGoal(int id) => state = state.copyWith(rentGoalId: id);
  void setRentPeriod(int id) => state = state.copyWith(rentPeriodId: id);

  void setWhoCanRentIds(Set<int> ids) =>
      state = state.copyWith(whoCanRentIds: ids);

  void toggleWhoCanRent(int id) => _toggleTag(
    state.whoCanRentIds,
    id,
    (val) => state = state.copyWith(whoCanRentIds: val),
  );

  // ----- Premises & Property -----

  void setPremisesType(int id) => state = state.copyWith(premisesTypeId: id);
  void setPropertyType(int id) => state = state.copyWith(propertyTypeId: id);

  // ----- Apartment Properties -----

  void setRoomsCount(int id) => state = state.copyWith(roomsCountId: id);
  void setLayout(int id) => state = state.copyWith(layoutId: id);

  // ----- Features -----

  void setRenovation(int id) => state = state.copyWith(renovationId: id);
  void setElevators(int id) => state = state.copyWith(elevatorsId: id);
  void setBalconies(int id) => state = state.copyWith(balconiesId: id);

  // ----- Things (Множественный выбор) -----

  void setFurniture(int id) => state = state.copyWith(furnitureId: id);

  void setAmenitiesIds(Set<int> ids) =>
      state = state.copyWith(amenitiesIds: ids);

  void setBathroomIds(Set<int> ids) => state = state.copyWith(bathroomIds: ids);

  void setAppliancesIds(Set<int> ids) =>
      state = state.copyWith(appliancesIds: ids);

  void toggleAmenity(int id) => _toggleTag(
    state.amenitiesIds,
    id,
    (val) => state = state.copyWith(amenitiesIds: val),
  );

  void toggleBathroom(int id) => _toggleTag(
    state.bathroomIds,
    id,
    (val) => state = state.copyWith(bathroomIds: val),
  );

  void toggleAppliance(int id) => _toggleTag(
    state.appliancesIds,
    id,
    (val) => state = state.copyWith(appliancesIds: val),
  );

  void setStove(int id) => state = state.copyWith(stoveId: id);

  // ----- Deal Terms -----

  void setCurrencyId(int id) => state = state.copyWith(currencyId: id);
  void setPrepayment(int id) => state = state.copyWith(prepaymentId: id);
  void setRentDuration(int id) => state = state.copyWith(rentDurationId: id);

  void setRentConditionsIds(Set<int> ids) =>
      state = state.copyWith(rentConditionsIds: ids);

  void toggleRentCondition(int id) => _toggleTag(
    state.rentConditionsIds,
    id,
    (val) => state = state.copyWith(rentConditionsIds: val),
  );

  void setCurrencySelection(int id, String optionTitle) =>
      state = state.copyWith(
        currencyId: id,
        selectedCurrency: Currency.fromTitle(optionTitle),
      );

  // ----- Input Fields -----

  void updateCost(String val) =>
      state = state.copyWith(cost: double.tryParse(val) ?? 0);
  void updateDeposit(String val) =>
      state = state.copyWith(deposit: double.tryParse(val) ?? 0);
  void updateArea(String val) =>
      state = state.copyWith(apartmentArea: double.tryParse(val) ?? 0);
  void updateFloor(String val) =>
      state = state.copyWith(floor: int.tryParse(val) ?? 0);
  void updateTotalFloors(String val) =>
      state = state.copyWith(totalFloors: int.tryParse(val) ?? 0);

  void updateApartmentNumber(String val) =>
      state = state.copyWith(apartmentNumber: int.tryParse(val) ?? 0);

  void updateTitle(String val) => state = state.copyWith(title: val);
  void updateDescription(String val) =>
      state = state.copyWith(description: val);
  void setImageUrls(List<String> urls) =>
      state = state.copyWith(imageUrls: urls);
  void addImageUrl(String url) =>
      state = state.copyWith(imageUrls: [...state.imageUrls, url]);
  void removeImageUrl(String url) => state = state.copyWith(
    imageUrls: state.imageUrls.where((item) => item != url).toList(),
  );

  void setContactMethod(int id) {
    state = state.copyWith(contactMethodId: id);
  }

  void updateAdditionalPhone(String val) =>
      state = state.copyWith(additionalNumber: val);

  Future<RemoteException?> createAd() async {
    if (await ref.redirectToAuthIfGuest()) {
      return const RemoteException(kind: RemoteExceptionKind.unauthorized);
    }

    final draftService = ref.read(createDraftServiceProvider);
    final result = await ref
        .read(apartamentsRepositoryProvider)
        .createAd(state);
    if (!ref.mounted) {
      return null;
    }

    return await result.fold((error) async => error, (_) async {
      await draftService.clearAdDraft();
      if (!ref.mounted) {
        return null;
      }

      ref.invalidate(createAdDraftProvider);
      return null;
    });
  }

  bool _hasDraft(CreateAdFormModel form) {
    return form.rentGoalId != 0 ||
        form.rentPeriodId != 0 ||
        form.whoCanRentIds.isNotEmpty ||
        form.premisesTypeId != 0 ||
        form.propertyTypeId != 0 ||
        form.roomsCountId != 0 ||
        form.layoutId != 0 ||
        form.renovationId != 0 ||
        form.elevatorsId != 0 ||
        form.balconiesId != 0 ||
        form.furnitureId != 0 ||
        form.amenitiesIds.isNotEmpty ||
        form.bathroomIds.isNotEmpty ||
        form.appliancesIds.isNotEmpty ||
        form.stoveId != 0 ||
        form.currencyId != 0 ||
        form.prepaymentId != 0 ||
        form.rentDurationId != 0 ||
        form.rentConditionsIds.isNotEmpty ||
        form.contactMethodId != 0 ||
        form.cost > 0 ||
        form.deposit > 0 ||
        form.apartmentArea > 0 ||
        form.floor > 0 ||
        form.totalFloors > 0 ||
        form.addressDetails.value.trim().isNotEmpty ||
        form.apartmentNumber > 0 ||
        form.title.trim().isNotEmpty ||
        form.description.trim().isNotEmpty ||
        form.additionalNumber.trim().isNotEmpty ||
        form.imageUrls.isNotEmpty;
  }

  Future<void> _syncDraft(CreateAdFormModel form) async {
    final draftService = ref.read(createDraftServiceProvider);
    if (_hasDraft(form)) {
      await draftService.saveAdDraft(form);
    } else {
      await draftService.clearAdDraft();
    }

    if (!ref.mounted) {
      return;
    }
    ref.invalidate(createAdDraftProvider);
  }
}
