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
  Future<ProfileModel> build() async {
    return _resolveProfile(showError: false);
  }

  Future<ProfileModel> fetchProfile({bool showError = true}) async {
    state = const AsyncValue.loading();
    final profile = await _resolveProfile(showError: showError);
    state = AsyncData(profile);
    return profile;
  }

  Future<RemoteException?> updateProfile({
    String? firstName,
    String? lastName,
    String? city,
    String? cityFiasId,
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
      cityFiasId: cityFiasId ?? current.cityFiasId,
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

    final result = await ref
        .read(profileRepositoryProvider)
        .updateProfile(updated);

    return result.fold(
      (error) {
        state = AsyncData(current);
        return error;
      },
      (profile) {
        state = AsyncData(profile);
        return null;
      },
    );
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

  Future<void> openIncomingGroupApplications() async {
    if (await ref.redirectToAuthIfGuest()) {
      return;
    }

    ref.nav.push(const GroupApplicationsTabViewRoute());
  }

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

    final result = await ref.read(authRepositoryProvider).logout();
    final error = result.fold((error) => error, (_) => null);
    if (error != null) {
      final message = error.messages.isNotEmpty
          ? error.messages
          : ref.l10n.logoutFailed;
      ref.nav.showSnackBar(message: message);
      return;
    }

    await ref.read(chatSocketServiceProvider).deactivate();
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

  Future<ProfileModel> _resolveProfile({required bool showError}) async {
    final hasSession = await ref.read(tokenServiceProvider).hasSession();
    if (!hasSession) {
      return ProfileModel.guest();
    }

    final result = await ref.read(profileRepositoryProvider).fetchProfile();
    return result.fold((error) {
      if (showError) {
        _showFetchProfileError(error);
      }

      return ProfileModel.guest();
    }, (profile) => profile);
  }

  String preferenceTitle(
    List<OptionModel> catalog,
    List<int> selectedIds, {
    String? emptyTitle,
  }) {
    return resolvePreferenceValue(
      options: catalog,
      selectedIds: selectedIds,
      emptyTitle: emptyTitle ?? ref.l10n.notSelectedPlural,
    );
  }

  void _showFetchProfileError(RemoteException error) {
    final message = switch (error.kind) {
      RemoteExceptionKind.unauthorized ||
      RemoteExceptionKind.refreshTokenFailed => ref.l10n.sessionExpiredReLogin,
      _ =>
        error.messages.isNotEmpty ? error.messages : ref.l10n.profileLoadFailed,
    };

    ref.nav.showSnackBar(message: message);
  }

  void openProfileEdit() => ref.nav.push(const ProfileDataEditRoute());
}
