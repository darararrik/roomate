import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/apartament/widgets/more_action_bottom_sheet.dart';
import 'package:roomate/app/favorites/state/favorites_notifier.dart';
import 'package:roomate/di/repository/repository_providers.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/utils/extensions.dart';

part 'apartament_notifier.freezed.dart';
part 'apartament_notifier.g.dart';

@riverpod
class Apartament extends _$Apartament {
  late final PageController pageController = PageController();

  @override
  Future<ApartamentState> build(String apartmentId) async {
    ref.onDispose(pageController.dispose);

    final locale = ref.l10n;
    final apartment = await fetchApartament(apartmentId);
    final hasImages = apartment.imageUrls.isNotEmpty;
    final imagesCount = hasImages ? apartment.imageUrls.length : 1;
    final isFavorite = ref.watch(
      favoritesProvider.select(
        (state) =>
            state.asData?.value.any((item) => item.id == apartment.id) ?? false,
      ),
    );

    return ApartamentState(
      apartment: apartment,
      hasImages: hasImages,
      imagesCount: imagesCount,
      isFavorite: isFavorite,
      verifiedTitle: apartment.isVerification
          ? locale.apartmentVerified
          : locale.apartmentNotVerified,
      companyTitle: apartment.whoToRent.contains(WhoToRent.company)
          ? locale.apartmentCompanyAllowed
          : locale.apartmentCompanyNotAllowed,
      publishedAt: apartment.publishDate.toRuLongPublishedDate(),
      viewsText: locale.viewsCount(apartment.totalViewers),
    );
  }

  Future<ApartamentModel> fetchApartament(String apartmentId) async {
    final res = await ref
        .read(apartamentsRepositoryProvider)
        .fetchApartamentById(apartmentId);
    return res.fold((l) => throw l, (r) => r);
  }

  void onPageChanged(int index) {
    state = AsyncValue.data((state.requireValue).copyWith(page: index));
  }

  Future<void> onPreviousImagePressed() async {
    if (state.requireValue.page == 0) return;

    await pageController.previousPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  Future<void> onNextImagePressed() async {
    if (state.requireValue.page >= state.requireValue.imagesCount - 1) return;

    await pageController.nextPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  Future<void> onFavoritePressed() async {
    final apartment = state.requireValue.apartment;
    final favoritesNotifier = ref.read(favoritesProvider.notifier);
    await favoritesNotifier.toggle(
      apartment.id,
      apartment: favoritesNotifier.fromDetails(apartment),
    );
  }

  void onCallPressed() {
    ref.nav.showSnackBar(message: 'Звонок будет доступен позже');
  }

  void onWritePressed() {
    final apartment = state.requireValue.apartment;
    ref.nav.push(ChatRoute(apartment: apartment));
  }

  void onMorePressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const MoreActionBottomSheet();
      },
    );
  }
}

@freezed
sealed class ApartamentState with _$ApartamentState {
  const factory ApartamentState({
    required ApartamentModel apartment,
    @Default(0) int page,
    @Default(false) bool hasImages,
    @Default(1) int imagesCount,
    @Default(false) bool isFavorite,
    @Default('') String verifiedTitle,
    @Default('') String companyTitle,
    @Default('') String publishedAt,
    @Default('') String viewsText,
  }) = _ApartamentState;
}
