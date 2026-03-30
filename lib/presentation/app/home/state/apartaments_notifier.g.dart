// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartaments_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApartamentsNotifier)
final apartamentsProvider = ApartamentsNotifierProvider._();

final class ApartamentsNotifierProvider
    extends $NotifierProvider<ApartamentsNotifier, ApartamentsState> {
  ApartamentsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentsNotifierHash();

  @$internal
  @override
  ApartamentsNotifier create() => ApartamentsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApartamentsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentsState>(value),
    );
  }
}

String _$apartamentsNotifierHash() =>
    r'ca290661cb9c568531f4e8f4a95a0e7a30479b53';

abstract class _$ApartamentsNotifier extends $Notifier<ApartamentsState> {
  ApartamentsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ApartamentsState, ApartamentsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ApartamentsState, ApartamentsState>,
              ApartamentsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
