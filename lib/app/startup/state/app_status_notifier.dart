import 'package:data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/di/network_providers.dart';

part 'app_status_notifier.g.dart';

enum AuthStatus { unknown, unverified, noForm, noProfile, ready }

@Riverpod(keepAlive: true)
class AppStatusNotifier extends _$AppStatusNotifier {
  AppStatusStorageService get _storage =>
      ref.read(appStatusStorageServiceProvider);

  @override
  Future<AuthStatus> build() async {
    return _resolve();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_resolve);
  }

  Future<void> markLoggedOut() async {
    await _storage.markLoggedOut();
    state = const AsyncData(AuthStatus.unverified);
  }

  Future<void> markFormCompleted() async {
    await _storage.markFormCompleted();
    state = const AsyncData(AuthStatus.noProfile);
  }

  Future<void> markProfileCompleted() async {
    await _storage.markProfileCompleted();
    state = const AsyncData(AuthStatus.ready);
  }

  Future<void> markProfileIncomplete() async {
    await _storage.markProfileIncomplete();
    state = const AsyncData(AuthStatus.noForm);
  }

  Future<AuthStatus> _resolve() async {
    final hasToken = await _hasToken();
    if (!hasToken) return AuthStatus.unverified;

    final snapshot = await _storage.read();
    if (!snapshot.hasCompletedForm) return AuthStatus.noForm;
    if (!snapshot.hasCompletedProfile) return AuthStatus.noProfile;

    return AuthStatus.ready;
  }

  Future<bool> _hasToken() async {
    final token = await ref.read(tokenServiceProvider).getAccessToken();
    return token != null && token.isNotEmpty;
  }
}
