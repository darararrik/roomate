// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRouter)
final appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<Raw<AppRouter>, Raw<AppRouter>, Raw<AppRouter>>
    with $Provider<Raw<AppRouter>> {
  AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<Raw<AppRouter>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Raw<AppRouter> create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<AppRouter> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<AppRouter>>(value),
    );
  }
}

String _$appRouterHash() => r'8866baf2a5ecdfdd64b68d50e3dd0cd0f70fb0e3';

@ProviderFor(navigationService)
final navigationServiceProvider = NavigationServiceProvider._();

final class NavigationServiceProvider
    extends
        $FunctionalProvider<
          NavigationService,
          NavigationService,
          NavigationService
        >
    with $Provider<NavigationService> {
  NavigationServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigationServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigationServiceHash();

  @$internal
  @override
  $ProviderElement<NavigationService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NavigationService create(Ref ref) {
    return navigationService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NavigationService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NavigationService>(value),
    );
  }
}

String _$navigationServiceHash() => r'a5c69309a52e3ae3faca78e892111ced7d18dd23';
