// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apartamentsRepository)
final apartamentsRepositoryProvider = ApartamentsRepositoryProvider._();

final class ApartamentsRepositoryProvider
    extends
        $FunctionalProvider<
          IApartamentsRepository,
          IApartamentsRepository,
          IApartamentsRepository
        >
    with $Provider<IApartamentsRepository> {
  ApartamentsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentsRepositoryHash();

  @$internal
  @override
  $ProviderElement<IApartamentsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IApartamentsRepository create(Ref ref) {
    return apartamentsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IApartamentsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IApartamentsRepository>(value),
    );
  }
}

String _$apartamentsRepositoryHash() =>
    r'd05e97e4f804e621d6bd4223a03ace3a83266ce9';

@ProviderFor(locationCatalogRepository)
final locationCatalogRepositoryProvider = LocationCatalogRepositoryProvider._();

final class LocationCatalogRepositoryProvider
    extends
        $FunctionalProvider<
          ILocationCatalogRepository,
          ILocationCatalogRepository,
          ILocationCatalogRepository
        >
    with $Provider<ILocationCatalogRepository> {
  LocationCatalogRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationCatalogRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationCatalogRepositoryHash();

  @$internal
  @override
  $ProviderElement<ILocationCatalogRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ILocationCatalogRepository create(Ref ref) {
    return locationCatalogRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ILocationCatalogRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ILocationCatalogRepository>(value),
    );
  }
}

String _$locationCatalogRepositoryHash() =>
    r'd9ee12c33c0b23c294ae66f18d664f628ed1e3d9';

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          IProfileRepository,
          IProfileRepository,
          IProfileRepository
        >
    with $Provider<IProfileRepository> {
  ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<IProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IProfileRepository create(Ref ref) {
    return profileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IProfileRepository>(value),
    );
  }
}

String _$profileRepositoryHash() => r'e718f47361b2aab368b907185549356049bf0c4a';

@ProviderFor(authRepository)
final authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'2be0f4ce38a26ef2703faadf0184fc5cf9aaf133';
