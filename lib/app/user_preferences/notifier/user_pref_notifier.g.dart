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
          AsyncValue<PreferencesTagsModel>,
          PreferencesTagsModel,
          FutureOr<PreferencesTagsModel>
        >
    with
        $FutureModifier<PreferencesTagsModel>,
        $FutureProvider<PreferencesTagsModel> {
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
  $FutureProviderElement<PreferencesTagsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PreferencesTagsModel> create(Ref ref) {
    return preferencesTags(ref);
  }
}

String _$preferencesTagsHash() => r'821e477fa4c71ea0608be644dc8e742514dd6be5';

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

String _$userPrefNotifierHash() => r'a3bcab126922bbd6b63131f25f9fe687f47f548b';

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
