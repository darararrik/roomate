import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/utils/extensions.dart';

part 'about_group_notifier.freezed.dart';
part 'about_group_notifier.g.dart';

@riverpod
class AboutGroup extends _$AboutGroup {
  late final PageController pageController = PageController();

  @override
  AboutGroupState build() {
    ref.onDispose(pageController.dispose);

    return AboutGroupState(
      imageUrls: const [
        'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1200&q=80',
        'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1200&q=80&sat=-10',
        'https://images.unsplash.com/photo-1484154218962-a197022b5858?auto=format&fit=crop&w=1200&q=80',
        'https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=1200&q=80',
        'https://images.unsplash.com/photo-1493809842364-78817add7ffb?auto=format&fit=crop&w=1200&q=80',
        'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1200&q=80',
        'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1200&q=80&brightness=95',
        'https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?auto=format&fit=crop&w=1200&q=80',
      ],
      publishedAt: '2026-02-26'.toRuLongPublishedDate(),
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
    if (state.page >= state.imageUrls.length - 1) return;

    await pageController.nextPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  void onFavoritePressed() {
    state = state.copyWith(isFavorite: !state.isFavorite);
  }

  void onApplyPressed() {
    ref.nav.showSnackBar(message: 'Подача заявки будет доступна позже');
  }
}

@freezed
sealed class AboutGroupState with _$AboutGroupState {
  const factory AboutGroupState({
    @Default(<String>[]) List<String> imageUrls,
    @Default(0) int page,
    @Default(false) bool isFavorite,
    @Default('') String publishedAt,
  }) = _AboutGroupState;
}
