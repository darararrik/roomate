import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'apartament_filter_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<FilterModel> filters(Ref ref) async {
  final res = await ref.watch(apartamentsRepositoryProvider).fetchFilters();
  return res.fold((e) => throw e, (data) => data);
}

@Riverpod(keepAlive: true)
class ApartamentFilterNotifier extends _$ApartamentFilterNotifier {
  @override
  ApartamentFilterModel build() => const ApartamentFilterModel();

  void openFilters() => ref.nav.push(const FiltersRoute());

  void setCategory(int goalId) {
    state = state.copyWith(goalId: goalId);
  }

  void togglePropertyType(int typeId) {
    final current = List<int>.from(state.propertyTypeIds);
    if (current.contains(typeId)) {
      current.remove(typeId);
    } else {
      current.add(typeId);
    }
    state = state.copyWith(propertyTypeIds: current);
  }

  void setPropertyTypeIds(Set<int> typeIds) {
    state = state.copyWith(propertyTypeIds: typeIds.toList());
  }

  void toggleRoomsCount(int roomsCountId) {
    final current = List<int>.from(state.roomsCountIds);
    if (current.contains(roomsCountId)) {
      current.remove(roomsCountId);
    } else {
      current.add(roomsCountId);
    }
    state = state.copyWith(roomsCountIds: current);
  }

  void setRoomsCountIds(Set<int> roomsCountIds) {
    state = state.copyWith(roomsCountIds: roomsCountIds.toList());
  }

  void setPriceRange(double? min, double? max) {
    state = state.copyWith(minPrice: min, maxPrice: max);
  }

  void setMinPrice(double? minPrice) {
    state = state.copyWith(minPrice: minPrice);
  }

  void setMaxPrice(double? maxPrice) {
    state = state.copyWith(maxPrice: maxPrice);
  }

  void setChildrenAllowed(bool value) {
    state = state.copyWith(childrenAllowed: value);
  }

  void setPetsAllowed(bool value) {
    state = state.copyWith(petsAllowed: value);
  }

  void setDistrictIds(Set<int> districtIds) {
    state = state.copyWith(districtIds: districtIds.toList());
  }

  void setLocationTitle(String locationTitle) {
    state = state.copyWith(locationTitle: locationTitle);
  }

  void setSortType(ApartmentSortType sortType) {
    state = state.copyWith(sortType: sortType);
  }

  void reset() {
    state = const ApartamentFilterModel();
  }

  void apply() {
    ref.read(apartamentsProvider.notifier).fetchWithFilter(state);
  }

  void setRentDuration(int id) {
    state = state.copyWith(rentDurationId: id);
  }
}
