import 'package:flutter/widgets.dart';

import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

import 'package:roomate/routing/app_routing.gr.dart';
import '../../lib.dart';

part 'global_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalProfileNotifier extends _$GlobalProfileNotifier {
  @override
  FutureOr<ProfileModel> build() {
    return ProfileModel.guest();
  }

  Future<ProfileModel> fetchProfile({bool showError = true}) async {
    state = const AsyncValue.loading();
    final result = await ref.read(loadCurrentProfileUseCaseProvider).call();

    if (result.error != null) {
      state = AsyncData(result.profile);

      if (showError) {
        _showFetchProfileError(result.error!);
      }

      return result.profile;
    }

    state = AsyncData(result.profile);
    return result.profile;
  }

  Future<RemoteException?> updateProfile({
    String? firstName,
    String? lastName,
    String? city,
    String? avatarUrl,
    GenderEnum? gender,
    int? age,
    SelectedUserPreferencesModel? preferences,
    bool? isOwner,
    bool showLoading = true,
  }) async {
    // Берем текущие данные из стейта (если там еще загрузка или ошибка — берем гостя)
    final current = state.value ?? ProfileModel.guest();

    final updated = current.copyWith(
      firstName: firstName ?? current.firstName,
      lastName: lastName ?? current.lastName,
      city: city ?? current.city,
      avatarUrl: avatarUrl ?? current.avatarUrl,
      gender: gender ?? current.gender,
      age: age ?? current.age,
      preferences: preferences ?? current.preferences,
      isOwner: isOwner ?? current.isOwner,
    );

    // Ставим состояние загрузки для UI
    if (showLoading) {
      state = const AsyncLoading();
    }

    final result = await ref.read(updateProfileUseCaseProvider).call(updated);

    if (result.error != null) {
      state = AsyncData(current);
      return result.error;
    }

    state = AsyncData(result.profile);
    return null;
  }

  Future<bool> updatePreferences(
    SelectedUserPreferencesModel preferences,
  ) async {
    final error = await updateProfile(preferences: preferences);
    if (error != null) {
      final message = error.messages.isNotEmpty
          ? error.messages
          : ref.l10n.preferencesSaveFailed;
      ref.nav.showSnackBar(message: message);
      return false;
    }

    return true;
  }

  void openSettings() => ref.nav.push(const SettingsRoute());

  void openMyAccount() => ref.nav.push(const MyAccountRoute());

  Future<void> logout() async {
    final shouldLogout = await ref.nav.showAlertDialog<bool>(
      builder: (context) => AlertWidget(
        title: ref.l10n.confirmation,
        content: ref.l10n.logoutConfirmMessage,
        onCancel: () => Navigator.of(context).pop(false),
        onConfirm: () => Navigator.of(context).pop(true),
      ),
    );

    if (shouldLogout != true) return;

    final error = await ref.read(logoutUseCaseProvider).call();
    if (error != null) {
      final message = error.messages.isNotEmpty
          ? error.messages
          : ref.l10n.logoutFailed;
      ref.nav.showSnackBar(message: message);
      return;
    }

    resetToGuest();
    await ref.read(appStatusProvider.notifier).markLoggedOut();
    ref.nav.replaceAll([const AuthWrapper()]);
  }

  void resetToGuest() {
    state = AsyncData(ProfileModel.guest());
  }

  void enterAsGuest() {
    state = AsyncData(ProfileModel.guest());
  }

  String preferenceTitle(
    List<OptionModel> catalog,
    List<int> selectedIds, {
    String? emptyTitle,
  }) {
    final resolvedEmptyTitle = emptyTitle ?? ref.l10n.notSelectedPlural;
    if (selectedIds.isEmpty) {
      return resolvedEmptyTitle;
    }

    final titlesById = {for (final option in catalog) option.id: option.title};
    final titles = <String>[];

    for (final id in selectedIds) {
      final title = titlesById[id];
      if (title != null && title.isNotEmpty) {
        titles.add(title);
      }
    }

    return titles.isEmpty ? resolvedEmptyTitle : titles.join(', ');
  }

  void _showFetchProfileError(RemoteException error) {
    final message = switch (error.kind) {
      RemoteExceptionKind.unauthorized ||
      RemoteExceptionKind.refreshTokenFailed =>
        ref.l10n.sessionExpiredReLogin,
      _ =>
        error.messages.isNotEmpty
            ? error.messages
            : ref.l10n.profileLoadFailed,
    };

    ref.nav.showSnackBar(message: message);
  }

  void openProfileEdit() => ref.nav.push(const ProfileDataEditRoute());
}
