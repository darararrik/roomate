// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateAdTaxonomy)
final createAdTaxonomyProvider = CreateAdTaxonomyProvider._();

final class CreateAdTaxonomyProvider
    extends $NotifierProvider<CreateAdTaxonomy, CreateAdTaxonomyState> {
  CreateAdTaxonomyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAdTaxonomyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAdTaxonomyHash();

  @$internal
  @override
  CreateAdTaxonomy create() => CreateAdTaxonomy();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAdTaxonomyState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAdTaxonomyState>(value),
    );
  }
}

String _$createAdTaxonomyHash() => r'f606b3c5b510a200217d333733f3a36f6400ec91';

abstract class _$CreateAdTaxonomy extends $Notifier<CreateAdTaxonomyState> {
  CreateAdTaxonomyState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateAdTaxonomyState, CreateAdTaxonomyState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAdTaxonomyState, CreateAdTaxonomyState>,
              CreateAdTaxonomyState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateAdNotifier)
final createAdProvider = CreateAdNotifierProvider._();

final class CreateAdNotifierProvider
    extends $NotifierProvider<CreateAdNotifier, CreateAdState> {
  CreateAdNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAdNotifierHash();

  @$internal
  @override
  CreateAdNotifier create() => CreateAdNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAdState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAdState>(value),
    );
  }
}

String _$createAdNotifierHash() => r'ebd891813a825a14551df0e2183b6da7d285d09b';

abstract class _$CreateAdNotifier extends $Notifier<CreateAdState> {
  CreateAdState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateAdState, CreateAdState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAdState, CreateAdState>,
              CreateAdState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
