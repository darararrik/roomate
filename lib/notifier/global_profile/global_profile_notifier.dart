import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:shared/shared.dart';

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
    String? avatarUrl,
    GenderEnum? gender,
    int? age,
    SelectedUserPreferencesModel? preferences,
  }) async {
    // Берем текущие данные из стейта (если там еще загрузка или ошибка — берем гостя)
    final current = state.value ?? ProfileModel.guest();

    final updated = current.copyWith(
      firstName: firstName ?? current.firstName,
      lastName: lastName ?? current.lastName,
      avatarUrl: avatarUrl ?? current.avatarUrl,
      gender: gender ?? current.gender,
      age: age ?? current.age,
      preferences: preferences ?? current.preferences,
    );

    // Ставим состояние загрузки для UI
    state = const AsyncLoading();

    final result = await ref.read(updateProfileUseCaseProvider).call(updated);

    if (result.error != null) {
      state = AsyncError(result.error!, StackTrace.current);
      return result.error;
    }

    state = AsyncData(result.profile);
    return null;
  }

  Future<void> logout() async {
    final error = await ref.read(logoutUseCaseProvider).call();
    if (error != null) {
      final message = error.messages.isNotEmpty
          ? error.messages
          : 'Не удалось выйти из аккаунта';
      ref.nav.showSnackBar(message: message);
      return;
    }

    resetToGuest();
    await ref.read(appStatusStorageServiceProvider).markLoggedOut();
    ref.invalidate(appStatusProvider);
    ref.nav.replaceAll([const OnBoardingRoute()]);
  }

  void resetToGuest() {
    state = AsyncData(ProfileModel.guest());
  }

  void enterAsGuest() {
    state = AsyncData(ProfileModel.guest());
  }

  void _showFetchProfileError(RemoteException error) {
    final message = switch (error.kind) {
      RemoteExceptionKind.unauthorized ||
      RemoteExceptionKind.refreshTokenFailed =>
        'Сессия истекла. Войдите снова.',
      _ =>
        error.messages.isNotEmpty
            ? error.messages
            : 'Не удалось загрузить профиль',
    };

    ref.nav.showSnackBar(message: message);
  }
}
