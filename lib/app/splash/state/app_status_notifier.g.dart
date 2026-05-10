// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_status_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppStatusNotifier)
final appStatusProvider = AppStatusNotifierProvider._();

final class AppStatusNotifierProvider
    extends $AsyncNotifierProvider<AppStatusNotifier, AuthStatus> {
  AppStatusNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStatusNotifierHash();

  @$internal
  @override
  AppStatusNotifier create() => AppStatusNotifier();
}

String _$appStatusNotifierHash() => r'd6fcc6a472ab27947f511b7f6ec973e2570d6ab9';

abstract class _$AppStatusNotifier extends $AsyncNotifier<AuthStatus> {
  FutureOr<AuthStatus> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AuthStatus>, AuthStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthStatus>, AuthStatus>,
              AsyncValue<AuthStatus>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
