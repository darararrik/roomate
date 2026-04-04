import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'ad_form_notifier.g.dart';

@riverpod
Future<AdFormOptionsModel> getAdFormOptions(Ref ref) async {
  final form = await ref
      .read(apartamentsRepositoryProvider)
      .fetchAdFormOptions();
  return form;
}

@riverpod
class AdFormNotifier extends _$AdFormNotifier {
  @override
  CreateAdFormModel build() {
    // Слушаем изменение профиля для автоматического обновления телефона
    ref.listen(globalProfileProvider, (prev, next) {
      final newPhone = next.value?.phone;
      if (newPhone != null && newPhone.isNotEmpty && state.mainPhone.isEmpty) {
        state = state.copyWith(mainPhone: newPhone);
      }
    });

    final initialPhone = ref.read(globalProfileProvider).value?.phone ?? '';
    return CreateAdFormModel(mainPhone: initialPhone);
  }

  void selectStreet(StreetModel street) {
    state = state.copyWith(
      selectedStreetId: street.id,
      address: street.formattedAddress,
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

  void setContactMethod(int id) => state = state.copyWith(contactMethodId: id);
  void updateAdditionalPhone(String val) =>
      state = state.copyWith(additionalNumber: val);

  // ----- Отправка данных -----
}
