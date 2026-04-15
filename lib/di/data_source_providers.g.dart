// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileRemoteDataSource)
final profileRemoteDataSourceProvider = ProfileRemoteDataSourceProvider._();

final class ProfileRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ProfileDataSource,
          ProfileDataSource,
          ProfileDataSource
        >
    with $Provider<ProfileDataSource> {
  ProfileRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProfileDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileDataSource create(Ref ref) {
    return profileRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileDataSource>(value),
    );
  }
}

String _$profileRemoteDataSourceHash() =>
    r'316c6c8f58dc5b0e01b2eb8ae5bdebf74d5a287d';

@ProviderFor(apartamentsRemoteDataSource)
final apartamentsRemoteDataSourceProvider =
    ApartamentsRemoteDataSourceProvider._();

final class ApartamentsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ApartamentsDataSource,
          ApartamentsDataSource,
          ApartamentsDataSource
        >
    with $Provider<ApartamentsDataSource> {
  ApartamentsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentsRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ApartamentsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApartamentsDataSource create(Ref ref) {
    return apartamentsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApartamentsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentsDataSource>(value),
    );
  }
}

String _$apartamentsRemoteDataSourceHash() =>
    r'e3b51f4871152ec2876b37f65a66f2d53365f093';

@ProviderFor(profileTagsMockDataSource)
final profileTagsMockDataSourceProvider = ProfileTagsMockDataSourceProvider._();

final class ProfileTagsMockDataSourceProvider
    extends
        $FunctionalProvider<
          ProfileTagsMockDataSource,
          ProfileTagsMockDataSource,
          ProfileTagsMockDataSource
        >
    with $Provider<ProfileTagsMockDataSource> {
  ProfileTagsMockDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileTagsMockDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileTagsMockDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProfileTagsMockDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileTagsMockDataSource create(Ref ref) {
    return profileTagsMockDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileTagsMockDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileTagsMockDataSource>(value),
    );
  }
}

String _$profileTagsMockDataSourceHash() =>
    r'33941b74ca955549128dfd40d049921924e24570';

@ProviderFor(locationCatalogDataSource)
final locationCatalogDataSourceProvider = LocationCatalogDataSourceProvider._();

final class LocationCatalogDataSourceProvider
    extends
        $FunctionalProvider<
          LocationCatalogDataSource,
          LocationCatalogDataSource,
          LocationCatalogDataSource
        >
    with $Provider<LocationCatalogDataSource> {
  LocationCatalogDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationCatalogDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationCatalogDataSourceHash();

  @$internal
  @override
  $ProviderElement<LocationCatalogDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationCatalogDataSource create(Ref ref) {
    return locationCatalogDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationCatalogDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationCatalogDataSource>(value),
    );
  }
}

String _$locationCatalogDataSourceHash() =>
    r'6bb8015878d3f5510fc1687a6fd2fa6c68a8ff03';

@ProviderFor(authDataSource)
final authDataSourceProvider = AuthDataSourceProvider._();

final class AuthDataSourceProvider
    extends $FunctionalProvider<AuthDataSource, AuthDataSource, AuthDataSource>
    with $Provider<AuthDataSource> {
  AuthDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authDataSourceHash();

  @$internal
  @override
  $ProviderElement<AuthDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthDataSource create(Ref ref) {
    return authDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthDataSource>(value),
    );
  }
}

String _$authDataSourceHash() => r'379f07b08b8f5a5eb9455d934ee4f38f5e98fcd3';
