// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_search_filter_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filtersNeighbours)
final filtersNeighboursProvider = FiltersNeighboursProvider._();

final class FiltersNeighboursProvider
    extends
        $FunctionalProvider<
          AsyncValue<CreateGroupFormOptionsModel>,
          CreateGroupFormOptionsModel,
          FutureOr<CreateGroupFormOptionsModel>
        >
    with
        $FutureModifier<CreateGroupFormOptionsModel>,
        $FutureProvider<CreateGroupFormOptionsModel> {
  FiltersNeighboursProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filtersNeighboursProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filtersNeighboursHash();

  @$internal
  @override
  $FutureProviderElement<CreateGroupFormOptionsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CreateGroupFormOptionsModel> create(Ref ref) {
    return filtersNeighbours(ref);
  }
}

String _$filtersNeighboursHash() => r'4f5786711b7d55a5bcda8cefc1361327216bb863';

@ProviderFor(WhoSearchFilterNotifier)
final whoSearchFilterProvider = WhoSearchFilterNotifierProvider._();

final class WhoSearchFilterNotifierProvider
    extends $NotifierProvider<WhoSearchFilterNotifier, WhoSearchFilterModel> {
  WhoSearchFilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'whoSearchFilterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$whoSearchFilterNotifierHash();

  @$internal
  @override
  WhoSearchFilterNotifier create() => WhoSearchFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WhoSearchFilterModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WhoSearchFilterModel>(value),
    );
  }
}

String _$whoSearchFilterNotifierHash() =>
    r'dc0037944f0d01f6d301fd3c34086f2b8f803275';

abstract class _$WhoSearchFilterNotifier
    extends $Notifier<WhoSearchFilterModel> {
  WhoSearchFilterModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<WhoSearchFilterModel, WhoSearchFilterModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WhoSearchFilterModel, WhoSearchFilterModel>,
              WhoSearchFilterModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
