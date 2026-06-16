import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';

part 'favorites_notifier.g.dart';

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  @override
  Future<List<ApartamentPreviewModel>> build() async {
    await ref.watch(appStatusProvider.future);

    final hasSession = await ref.read(tokenServiceProvider).hasSession();
    if (!hasSession) {
      return const [];
    }

    final result = await ref
        .read(apartamentsRepositoryProvider)
        .fetchFavoriteApartments();
    return result.fold((error) => throw error, (items) => items);
  }

  bool isFavorite(String apartmentId) {
    return state.asData?.value.any((item) => item.id == apartmentId) ?? false;
  }

  Future<void> toggle(
    String apartmentId, {
    ApartamentPreviewModel? apartment,
  }) async {
    if (await ref.redirectToAuthIfGuest()) {
      return;
    }

    final current = state.asData?.value ?? const <ApartamentPreviewModel>[];
    final hasFavorite = current.any((item) => item.id == apartmentId);

    final result = hasFavorite
        ? await ref
              .read(apartamentsRepositoryProvider)
              .removeApartmentFromFavorites(apartmentId)
        : await ref
              .read(apartamentsRepositoryProvider)
              .addApartmentToFavorites(apartmentId);

    result.fold(
      (error) {
        final message = error.messages.isNotEmpty
            ? error.messages
            : 'Не удалось обновить избранное';
        ref.nav.showSnackBar(message: message);
      },
      (_) {
        if (hasFavorite) {
          state = AsyncData(
            current
                .where((item) => item.id != apartmentId)
                .toList(growable: false),
          );
          return;
        }

        if (apartment == null) {
          ref.invalidateSelf();
          return;
        }

        state = AsyncData([apartment, ...current]);
        ref.nav.showCustomToast(const ToastWidget());
      },
    );
  }

  ApartamentPreviewModel fromDetails(ApartamentModel apartment) {
    return ApartamentPreviewModel(
      id: apartment.id,
      imageUrls: apartment.imageUrls,
      price: apartment.price,
      roomsCount: apartment.roomsCount,
      area: apartment.area,
      floor: apartment.floor,
      totalFloor: apartment.totalFloor,
      address: apartment.address,
    );
  }
}
