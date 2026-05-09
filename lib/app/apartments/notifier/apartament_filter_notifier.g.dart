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
        isAutoDispose: false,
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

String _$filtersHash() => r'12d0533d5caf1cdd6a8db3d778fb515907f453be';

@ProviderFor(ApartamentFilterNotifier)
final apartamentFilterProvider = ApartamentFilterNotifierProvider._();

final class ApartamentFilterNotifierProvider
    extends $NotifierProvider<ApartamentFilterNotifier, ApartamentFilterModel> {
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
  Override overrideWithValue(ApartamentFilterModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentFilterModel>(value),
    );
  }
}

String _$apartamentFilterNotifierHash() =>
    r'56e6330e5ac75a0407ee02cd33dd08d7349ba428';

abstract class _$ApartamentFilterNotifier
    extends $Notifier<ApartamentFilterModel> {
  ApartamentFilterModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ApartamentFilterModel, ApartamentFilterModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ApartamentFilterModel, ApartamentFilterModel>,
              ApartamentFilterModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
