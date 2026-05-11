import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';

part 'favorites_notifier.g.dart';

@Riverpod(keepAlive: true)
class FavoriteApartmentIdsNotifier extends _$FavoriteApartmentIdsNotifier {
  @override
  Set<String> build() => <String>{};

  bool isFavorite(String apartmentId) => state.contains(apartmentId);

  bool toggle(String apartmentId) {
    if (state.contains(apartmentId)) {
      final updated = <String>{...state}..remove(apartmentId);
      state = updated;
      return false;
    }
    state = <String>{...state, apartmentId};
    ref.nav.showCustomToast(const ToastWidget());
    return true;
  }
}

@riverpod
class FavoritesScreenNotifier extends _$FavoritesScreenNotifier {
  @override
  List<ApartamentPreviewModel> build() {
    final favoriteIds = ref.watch(favoriteApartmentIdsProvider);
    final apartaments = ref.watch(apartamentsProvider).value?.apartaments ?? [];

    return apartaments
        .where((apartament) => favoriteIds.contains(apartament.id))
        .toList(growable: false);
  }
}
