// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pref_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(preferenceTagsCatalog)
final preferenceTagsCatalogProvider = PreferenceTagsCatalogProvider._();

final class PreferenceTagsCatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<PreferenceTagsCatalogModel>,
          PreferenceTagsCatalogModel,
          FutureOr<PreferenceTagsCatalogModel>
        >
    with
        $FutureModifier<PreferenceTagsCatalogModel>,
        $FutureProvider<PreferenceTagsCatalogModel> {
  PreferenceTagsCatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferenceTagsCatalogProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferenceTagsCatalogHash();

  @$internal
  @override
  $FutureProviderElement<PreferenceTagsCatalogModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PreferenceTagsCatalogModel> create(Ref ref) {
    return preferenceTagsCatalog(ref);
  }
}

String _$preferenceTagsCatalogHash() =>
    r'eebc978aedf82cc3b9f20a2676af8a7e51dd206d';

@ProviderFor(UserPrefNotifier)
final userPrefProvider = UserPrefNotifierProvider._();

final class UserPrefNotifierProvider
    extends $NotifierProvider<UserPrefNotifier, PrefState> {
  UserPrefNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPrefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPrefNotifierHash();

  @$internal
  @override
  UserPrefNotifier create() => UserPrefNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrefState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrefState>(value),
    );
  }
}

String _$userPrefNotifierHash() => r'0d694beaef379bb73b8119b356bd2abdc4206ec5';

abstract class _$UserPrefNotifier extends $Notifier<PrefState> {
  PrefState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PrefState, PrefState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PrefState, PrefState>,
              PrefState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
