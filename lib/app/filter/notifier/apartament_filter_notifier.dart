import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'apartament_filter_notifier.g.dart';

@riverpod
Future<FilterModel> filters(Ref ref) async {
  return ref.watch(apartamentsRepositoryProvider).fetchFilters();
}

@Riverpod(keepAlive: true)
class ApartamentFilterNotifier extends _$ApartamentFilterNotifier {
  @override
  ApartamentFilter build() => const ApartamentFilter();

  void setCategory(int? categoryId) {
    state = state.copyWith(categoryId: categoryId);
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

  void toggleRoomsCount(int roomsCountId) {
    final current = List<int>.from(state.roomsCountIds);
    if (current.contains(roomsCountId)) {
      current.remove(roomsCountId);
    } else {
      current.add(roomsCountId);
    }
    state = state.copyWith(roomsCountIds: current);
  }

  void setPriceRange(double min, double max) {
    state = state.copyWith(minPrice: min, maxPrice: max);
  }

  void reset() {
    state = const ApartamentFilter();
  }

  void apply() {
    ref.read(apartamentsProvider.notifier).fetchWithFilter(state);
  }
}
