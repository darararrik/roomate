import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'favorites_notifier.g.dart';

@Riverpod(keepAlive: true)
class FavoriteApartmentIdsNotifier extends _$FavoriteApartmentIdsNotifier {
  @override
  Set<int> build() => <int>{};

  bool isFavorite(int apartmentId) => state.contains(apartmentId);

  bool toggle(int apartmentId) {
    if (state.contains(apartmentId)) {
      final updated = <int>{...state}..remove(apartmentId);
      state = updated;
      return false;
    }
    state = <int>{...state, apartmentId};
    ref.nav.showCustomToast(const ToastWidget());
    return true;
  }
}

@riverpod
class FavoritesScreenNotifier extends _$FavoritesScreenNotifier {
  @override
  List<ApartamentModel> build() {
    final favoriteIds = ref.watch(favoriteApartmentIdsProvider);
    final apartaments = ref.watch(apartamentsProvider).value?.apartaments ?? [];

    return apartaments
        .where((apartament) => favoriteIds.contains(apartament.id))
        .toList(growable: false);
  }
}
