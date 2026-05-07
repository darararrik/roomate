// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileDataSource)
final profileDataSourceProvider = ProfileDataSourceProvider._();

final class ProfileDataSourceProvider
    extends
        $FunctionalProvider<
          ProfileDataSource,
          ProfileDataSource,
          ProfileDataSource
        >
    with $Provider<ProfileDataSource> {
  ProfileDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProfileDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileDataSource create(Ref ref) {
    return profileDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileDataSource>(value),
    );
  }
}

String _$profileDataSourceHash() => r'4a7cd265aade3b25b28595663c2b4ca4972ec676';

@ProviderFor(apartamentsDataSource)
final apartamentsDataSourceProvider = ApartamentsDataSourceProvider._();

final class ApartamentsDataSourceProvider
    extends
        $FunctionalProvider<
          ApartamentsDataSource,
          ApartamentsDataSource,
          ApartamentsDataSource
        >
    with $Provider<ApartamentsDataSource> {
  ApartamentsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentsDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentsDataSourceHash();

  @$internal
  @override
  $ProviderElement<ApartamentsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApartamentsDataSource create(Ref ref) {
    return apartamentsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApartamentsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentsDataSource>(value),
    );
  }
}

String _$apartamentsDataSourceHash() =>
    r'9676eab7e60accc0c0bfeb6d4b55eff233d0e20c';

@ProviderFor(locationDataSource)
final locationDataSourceProvider = LocationDataSourceProvider._();

final class LocationDataSourceProvider
    extends
        $FunctionalProvider<
          LocationDataSource,
          LocationDataSource,
          LocationDataSource
        >
    with $Provider<LocationDataSource> {
  LocationDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationDataSourceHash();

  @$internal
  @override
  $ProviderElement<LocationDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationDataSource create(Ref ref) {
    return locationDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationDataSource>(value),
    );
  }
}

String _$locationDataSourceHash() =>
    r'1e2cd2c12f2ce0de6d43bc4d276e69db08aee498';

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

String _$authDataSourceHash() => r'2fbe80d413e2cf6dac58d141e6b28ebaa43aeddb';
