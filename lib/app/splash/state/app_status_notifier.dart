import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'auth_status.dart';

part 'app_status_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppStatusNotifier extends _$AppStatusNotifier {
  @override
  Future<AuthStatus> build() async {
    return _resolveAppStatus();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_resolveAppStatus);
  }

  Future<void> markLoggedOut() async {
    await ref.read(appStatusStorageServiceProvider).markLoggedOut();
    state = const AsyncData(AuthStatus.unverified);
  }

  Future<void> markFormCompleted() async {
    await ref.read(appStatusStorageServiceProvider).markFormCompleted();
    state = const AsyncData(AuthStatus.noProfile);
  }

  Future<void> markProfileCompleted() async {
    await ref.read(appStatusStorageServiceProvider).markProfileCompleted();
    state = const AsyncData(AuthStatus.ready);
  }

  Future<void> markProfileIncomplete() async {
    await ref.read(appStatusStorageServiceProvider).markProfileIncomplete();
    state = const AsyncData(AuthStatus.noForm);
  }

  Future<AuthStatus> _resolveAppStatus() async {
    final profile = await ref.read(globalProfileProvider.future);
    if (profile.isGuest) {
      return AuthStatus.unverified;
    }

    final snapshot = await ref.read(appStatusStorageServiceProvider).read();
    if (!snapshot.hasCompletedForm) {
      return _statusFromProfile(profile);
    }
    if (!snapshot.hasCompletedProfile) {
      return profile.hasCompletedPreferences
          ? AuthStatus.ready
          : AuthStatus.noProfile;
    }

    return AuthStatus.ready;
  }

  AuthStatus _statusFromProfile(ProfileModel profile) {
    if (!profile.hasCompletedBasicProfile) {
      return AuthStatus.noForm;
    }

    if (!profile.hasCompletedPreferences) {
      return AuthStatus.noProfile;
    }

    return AuthStatus.ready;
  }
}
