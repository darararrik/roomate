import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'about_group_notifier.freezed.dart';
part 'about_group_notifier.g.dart';

@riverpod
class AboutGroup extends _$AboutGroup {
  late final PageController pageController = PageController();

  IGroupsRepository get _repository => ref.read(groupsRepositoryProvider);

  @override
  Future<AboutGroupState> build(String groupId) async {
    ref.onDispose(pageController.dispose);

    final result = await _repository.fetchGroupById(groupId);
    return result.fold(
      (error) => throw error,
      (group) => AboutGroupState(
        group: group,
        applicationStatus: group.applicationStatus,
      ),
    );
  }

  void onPageChanged(int index) {
    final value = state.asData?.value;
    if (value == null) return;

    state = AsyncData(value.copyWith(page: index));
  }

  Future<void> onPreviousImagePressed() async {
    final value = state.asData?.value;
    if (value == null || value.page == 0) return;

    await pageController.previousPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  Future<void> onNextImagePressed() async {
    final value = state.asData?.value;
    if (value == null) return;

    final lastPage = value.group.apartament.imageUrls.length - 1;
    if (value.page >= lastPage) return;

    await pageController.nextPage(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
    );
  }

  Future<void> onFavoritePressed() async {
    //TODO: MVP
    ref.nav.showSnackBar(message: 'Не удалось добавить в избранное');
  }

  void openConditionsAndParticipants() {
    final value = state.asData?.value;
    if (value == null) return;

    ref.nav.push(
      GroupConditionsAndParticipantsRoute(conditions: value.group.conditions),
    );
  }

  Future<void> onApplyPressed() async {
    if (await ref.redirectToAuthIfGuest()) {
      return;
    }

    final value = state.asData?.value;
    if (value == null ||
        value.isApplying ||
        value.applicationStatus == 'pending') {
      return;
    }

    state = AsyncData(value.copyWith(isApplying: true));

    final result = await _repository.applyToGroup(value.group.id);
    result.fold(
      (_) {
        state = AsyncData(value.copyWith(isApplying: false));
        ref.nav.showSnackBar(message: ref.l10n.groupApplicationSubmitError);
      },
      (application) {
        state = AsyncData(
          value.copyWith(
            isApplying: false,
            applicationStatus: application.status,
            group: value.group.copyWith(applicationStatus: application.status),
          ),
        );
        ref.nav.showSnackBar(message: ref.l10n.groupApplicationSent);
      },
    );
  }
}

@freezed
sealed class AboutGroupState with _$AboutGroupState {
  const factory AboutGroupState({
    required GroupDetailModel group,
    @Default(0) int page,
    @Default(false) bool isFavorite,
    @Default('') String applicationStatus,
    @Default(false) bool isApplying,
  }) = _AboutGroupState;
}
