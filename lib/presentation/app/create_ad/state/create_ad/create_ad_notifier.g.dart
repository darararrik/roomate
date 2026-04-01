// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$createAdNotifierHash() => r'ad48a45830cc1fd3f352ec6f22040a8e7f1a36d1';

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
