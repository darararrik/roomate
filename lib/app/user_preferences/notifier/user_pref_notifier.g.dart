// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pref_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(preferencesTags)
final preferencesTagsProvider = PreferencesTagsProvider._();

final class PreferencesTagsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OptionModel>>,
          List<OptionModel>,
          FutureOr<List<OptionModel>>
        >
    with
        $FutureModifier<List<OptionModel>>,
        $FutureProvider<List<OptionModel>> {
  PreferencesTagsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferencesTagsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferencesTagsHash();

  @$internal
  @override
  $FutureProviderElement<List<OptionModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<OptionModel>> create(Ref ref) {
    return preferencesTags(ref);
  }
}

String _$preferencesTagsHash() => r'4c86e1df3f6d69ba8a0aa4453b08f86d366853a8';

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

String _$userPrefNotifierHash() => r'2944c38a7d8e54ea76b6752397242720a5f8b964';

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
