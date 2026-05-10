import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/app/apartament/widgets/more_action_bottom_sheet.dart';
import 'package:roomate/app/favorites/state/favorites_notifier.dart';
import 'package:roomate/utils/extensions.dart';

part 'apartament_notifier.freezed.dart';
part 'apartament_notifier.g.dart';

@riverpod
class Apartament extends _$Apartament {
  late final PageController pageController = PageController();

  @override
  ApartamentState build(ApartamentModel apartment) {
    ref.onDispose(pageController.dispose);

    final locale = ref.l10n;
    final hasImages = apartment.imageUrls.isNotEmpty;
    final imagesCount = hasImages ? apartment.imageUrls.length : 1;
    final isFavorite = ref.watch(
      favoriteApartmentIdsProvider.select((ids) => ids.contains(apartment.id)),
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

  void onPageChanged(int index) {
    state = state.copyWith(page: index);
  }

  Future<void> onPreviousImagePressed() async {
    if (state.page == 0) return;

    await pageController.previousPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  Future<void> onNextImagePressed() async {
    if (state.page >= state.imagesCount - 1) return;

    await pageController.nextPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  void onFavoritePressed() {
    ref.read(favoriteApartmentIdsProvider.notifier).toggle(state.apartment.id);
  }

  void onCallPressed() {
    ref.nav.showSnackBar(message: 'Звонок будет доступен позже');
  }

  void onWritePressed() {
    ref.nav.showSnackBar(message: 'Чат будет доступен позже');
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
