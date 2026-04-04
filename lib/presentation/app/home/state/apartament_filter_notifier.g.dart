// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_filter_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApartamentFilterNotifier)
final apartamentFilterProvider = ApartamentFilterNotifierProvider._();

final class ApartamentFilterNotifierProvider
    extends $NotifierProvider<ApartamentFilterNotifier, ApartamentFilter> {
  ApartamentFilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentFilterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentFilterNotifierHash();

  @$internal
  @override
  ApartamentFilterNotifier create() => ApartamentFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApartamentFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentFilter>(value),
    );
  }
}

String _$apartamentFilterNotifierHash() =>
    r'fb5935ad7579ff93216f9aa6cec7c04e309ce2c9';

abstract class _$ApartamentFilterNotifier extends $Notifier<ApartamentFilter> {
  ApartamentFilter build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ApartamentFilter, ApartamentFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ApartamentFilter, ApartamentFilter>,
              ApartamentFilter,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
