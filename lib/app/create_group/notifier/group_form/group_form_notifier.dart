import 'dart:async';

import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/shared.dart';

part 'group_form_notifier.g.dart';

@riverpod
Future<CreateGroupFormOptionsModel> getCreateGroupFormOptions(Ref ref) async {
  final result = await ref.read(groupsRepositoryProvider).fetchTags();
  return result.fold((error) => throw error, (value) => value);
}

@riverpod
String selectedGroupLocationName(Ref ref) {
  return ref.watch(groupFormProvider.select((state) => state.address));
}

@Riverpod(keepAlive: true)
class GroupFormNotifier extends _$GroupFormNotifier {
  @override
  CreateGroupFormModel build() {
    listenSelf((_, next) {
      unawaited(_syncDraft(next));
    });

    ref.listen(globalProfileProvider, (prev, next) {
      final profile = next.value;
      if (profile == null) {
        return;
      }

      if (state.address.isEmpty && profile.city.isNotEmpty) {
        state = state.copyWith(
          address: profile.city,
          cityFiasId: profile.cityFiasId,
        );
      }
    });

    return _initialState();
  }

  CreateGroupFormModel _initialState() {
    final profile = ref.read(globalProfileProvider).value;
    return CreateGroupFormModel(
      address: profile?.city ?? '',
      cityFiasId: profile?.cityFiasId ?? '',
    );
  }

  Future<void> reset() async {
    final draftService = ref.read(createDraftServiceProvider);
    state = _initialState();
    await draftService.clearGroupDraft();
    if (!ref.mounted) {
      return;
    }
    ref.invalidate(createGroupDraftProvider);
  }

  void restoreDraft(CreateGroupFormModel draft) {
    state = draft;
  }

  void selectLocation(LocationSelectionModel selection) {
    state = state.copyWith(
      selectedCityId: selection.cityId,
      address: selection.displayTitle,
      addressDetails: selection.addressDetails,
      cityFiasId: selection.cityFiasId,
    );
  }

  void _toggleTag(Set<int> currentSet, int id, Function(Set<int>) onUpdate) {
    final newSet = Set<int>.from(currentSet);
    if (newSet.contains(id)) {
      newSet.remove(id);
    } else {
      newSet.add(id);
    }
    onUpdate(newSet);
  }

  void updateTitle(String value) => state = state.copyWith(title: value);

  void setLookingForGender(int id) =>
      state = state.copyWith(lookingForGenderId: id);

  void updateAgeRange(int start, int end) {
    state = state.copyWith(ageFrom: start, ageTo: end);
  }

  void incrementParticipantsCount() {
    state = state.copyWith(participantsCount: state.participantsCount + 1);
  }

  void decrementParticipantsCount() {
    if (state.participantsCount <= 1) {
      return;
    }
    state = state.copyWith(participantsCount: state.participantsCount - 1);
  }

  void setChildrenAllowed(bool value) =>
      state = state.copyWith(childrenAllowed: value);

  void setPartnerAllowed(bool value) =>
      state = state.copyWith(partnerAllowed: value);

  void setPetsAllowed(bool value) => state = state.copyWith(petsAllowed: value);

  void setSmokingAllowed(bool value) =>
      state = state.copyWith(smokingAllowed: value);

  void setCommunication(int id) => state = state.copyWith(communicationId: id);

  void setSleep(int id) => state = state.copyWith(sleepId: id);

  void setBadHabits(int id) => state = state.copyWith(badHabitsId: id);

  void setGuests(int id) => state = state.copyWith(guestsId: id);

  void setNoiseLevel(int id) => state = state.copyWith(noiseLevelId: id);

  void setCleaning(int id) => state = state.copyWith(cleaningId: id);

  void setPets(int id) => state = state.copyWith(petsId: id);

  void setPetsAttitude(int id) => state = state.copyWith(petsAttitudeId: id);

  void setPropertyType(int id) => state = state.copyWith(propertyTypeId: id);

  void updateApartmentNumber(String value) =>
      state = state.copyWith(apartmentNumber: value);

  void setRoomsCount(int id) => state = state.copyWith(roomsCountId: id);

  void updateApartmentArea(String value) => state = state.copyWith(
    apartmentArea: double.tryParse(value.replaceAll(',', '.')) ?? 0,
  );

  void updateFloor(String value) =>
      state = state.copyWith(floor: int.tryParse(value) ?? 0);

  void updateTotalFloors(String value) =>
      state = state.copyWith(totalFloors: int.tryParse(value) ?? 0);

  void addMockPhoto() {
    const images = [
      'https://images.unsplash.com/photo-1484154218962-a197022b5858?auto=format&fit=crop&w=1200&q=80',
      'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1200&q=80',
      'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1200&q=80',
    ];
    final nextImage = images[state.imageUrls.length % images.length];
    state = state.copyWith(imageUrls: [...state.imageUrls, nextImage]);
  }

  void setFurniture(int id) => state = state.copyWith(furnitureId: id);

  void setAmenitiesIds(Set<int> ids) =>
      state = state.copyWith(amenitiesIds: ids);

  void setBathroomIds(Set<int> ids) => state = state.copyWith(bathroomIds: ids);

  void setAppliancesIds(Set<int> ids) =>
      state = state.copyWith(appliancesIds: ids);

  void toggleAmenity(int id) => _toggleTag(
    state.amenitiesIds,
    id,
    (newSet) => state = state.copyWith(amenitiesIds: newSet),
  );

  void toggleBathroom(int id) => _toggleTag(
    state.bathroomIds,
    id,
    (newSet) => state = state.copyWith(bathroomIds: newSet),
  );

  void toggleAppliance(int id) => _toggleTag(
    state.appliancesIds,
    id,
    (newSet) => state = state.copyWith(appliancesIds: newSet),
  );

  void setCurrencySelection(int id, String title) => state = state.copyWith(
    currencyId: id,
    selectedCurrency: Currency.fromTitle(title),
  );

  void updatePricePerPerson(String value) => state = state.copyWith(
    pricePerPerson:
        double.tryParse(value.replaceAll(' ', '').replaceAll(',', '.')) ?? 0,
  );

  void setRentDuration(int id) => state = state.copyWith(rentDurationId: id);

  void setUtilitiesPayment(int id) =>
      state = state.copyWith(utilitiesPaymentId: id);

  void updateDescription(String value) =>
      state = state.copyWith(description: value);

  Future<RemoteException?> createGroup() async {
    final draftService = ref.read(createDraftServiceProvider);
    final result = await ref.read(groupsRepositoryProvider).createGroup(state);
    if (!ref.mounted) {
      return null;
    }

    return await result.fold((error) async => error, (_) async {
      await draftService.clearGroupDraft();
      if (!ref.mounted) {
        return null;
      }

      ref.invalidate(createGroupDraftProvider);
      return null;
    });
  }

  bool _hasDraft(CreateGroupFormModel form) {
    return form.title.trim().isNotEmpty ||
        form.addressDetails.value.trim().isNotEmpty ||
        form.selectedCityId != 0 ||
        form.lookingForGenderId != 0 ||
        form.ageFrom != 18 ||
        form.ageTo != 60 ||
        form.participantsCount != 1 ||
        form.childrenAllowed ||
        form.partnerAllowed ||
        form.petsAllowed ||
        form.smokingAllowed ||
        form.communicationId != 0 ||
        form.sleepId != 0 ||
        form.employmentId != 0 ||
        form.badHabitsId != 0 ||
        form.guestsId != 0 ||
        form.noiseLevelId != 0 ||
        form.cleaningId != 0 ||
        form.petsId != 0 ||
        form.petsAttitudeId != 0 ||
        form.propertyTypeId != 0 ||
        form.apartmentNumber.trim().isNotEmpty ||
        form.roomsCountId != 0 ||
        form.apartmentArea > 0 ||
        form.floor > 0 ||
        form.totalFloors > 0 ||
        form.description.trim().isNotEmpty ||
        form.furnitureId != 0 ||
        form.amenitiesIds.isNotEmpty ||
        form.bathroomIds.isNotEmpty ||
        form.appliancesIds.isNotEmpty ||
        form.currencyId != 0 ||
        form.pricePerPerson > 0 ||
        form.rentDurationId != 0 ||
        form.utilitiesPaymentId != 0 ||
        form.imageUrls.isNotEmpty;
  }

  Future<void> _syncDraft(CreateGroupFormModel form) async {
    final draftService = ref.read(createDraftServiceProvider);
    if (_hasDraft(form)) {
      await draftService.saveGroupDraft(form);
    } else {
      await draftService.clearGroupDraft();
    }

    if (!ref.mounted) {
      return;
    }
    ref.invalidate(createGroupDraftProvider);
  }
}
