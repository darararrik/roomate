// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_filter_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filters)
final filtersProvider = FiltersProvider._();

final class FiltersProvider
    extends
        $FunctionalProvider<
          AsyncValue<FilterModel>,
          FilterModel,
          FutureOr<FilterModel>
        >
    with $FutureModifier<FilterModel>, $FutureProvider<FilterModel> {
  FiltersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filtersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filtersHash();

  @$internal
  @override
  $FutureProviderElement<FilterModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FilterModel> create(Ref ref) {
    return filters(ref);
  }
}

String _$filtersHash() => r'ae6754bc2bbca3b008c85f40daca432225f87779';

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
