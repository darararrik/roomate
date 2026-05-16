import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/neighbours/groups/notifier/groups_notifier.dart';
import 'package:roomate/di/feature/location_providers.dart';
import 'package:roomate/di/repository/repository_providers.dart';

part 'who_search_filter_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<CreateGroupFormOptionsModel> filtersNeighbours(Ref ref) async {
  final res = await ref.watch(groupsRepositoryProvider).fetchTags();
  return res.fold((e) => throw e, (data) => data);
}

@Riverpod(keepAlive: true)
class WhoSearchFilterNotifier extends _$WhoSearchFilterNotifier {
  @override
  WhoSearchFilterModel build() {
    final profileCity = ref.read(currentProfileCityProvider);

    return WhoSearchFilterModel(
      cityFiasId: profileCity?.fiasId ?? '',
      locationTitle: profileCity?.title ?? '',
    );
  }

  void setGender(GenderEnum? value) {
    state = state.copyWith(desiredGender: value);
  }

  void setAgeRange({required int minAge, required int maxAge}) {
    state = state.copyWith(minAge: minAge, maxAge: maxAge);
  }

  void setMinGroupSize(int? value) {
    state = state.copyWith(minParticipantsCount: value);
  }

  void setMaxGroupSize(int? value) {
    state = state.copyWith(maxParticipantsCount: value);
  }

  void setSearchQuery(String value) {
    state = state.copyWith(smartQuery: value);
  }

  void setLocationSelection(LocationSelectionModel selection) {
    state = state.copyWith(
      cityFiasId: selection.cityFiasId,
      locationTitle: selection.cityTitle,
      addressQuery: selection.addressQuery,
    );
  }

  void setDistrict(String value) {
    state = state.copyWith(district: value);
  }

  void setPropertyTypeIds(Set<int> ids) {
    state = state.copyWith(propertyTypeIds: ids.toList());
  }

  void setRoomsCountIds(Set<int> ids) {
    state = state.copyWith(roomsCountIds: ids.toList());
  }

  void setMinPrice(double? value) {
    state = state.copyWith(minPrice: value);
  }

  void setMaxPrice(double? value) {
    state = state.copyWith(maxPrice: value);
  }

  void setRentDuration(int value) {
    state = state.copyWith(rentDurationId: value);
  }

  void setSortType(WhoSearchSortType value) {
    state = state.copyWith(sortType: value);
  }

  void setChildrenAllowed(bool value) {
    state = state.copyWith(childrenAllowed: value);
  }

  void setPartnerAllowed(bool value) {
    state = state.copyWith(partnerAllowed: value);
  }

  void setPetsAllowed(bool value) {
    state = state.copyWith(petsAllowed: value);
  }

  void setSmokingAllowed(bool value) {
    state = state.copyWith(smokingAllowed: value);
  }

  // void setUtilitiesPayment(int value) {
  //   state = state.copyWith(utilitiesPaymentId: value);
  // }

  void reset() {
    final profileCity = ref.read(currentProfileCityProvider);

    state = WhoSearchFilterModel(
      cityFiasId: profileCity?.fiasId ?? '',
      locationTitle: profileCity?.title ?? '',
    );
  }

  Future<void> apply() {
    return ref.read(groupsProvider.notifier).fetchWithFilter(state);
  }
}
