// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_filters_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApartamentFiltersNotifier)
final apartamentFiltersProvider = ApartamentFiltersNotifierProvider._();

final class ApartamentFiltersNotifierProvider
    extends $AsyncNotifierProvider<ApartamentFiltersNotifier, FilterModel> {
  ApartamentFiltersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentFiltersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentFiltersNotifierHash();

  @$internal
  @override
  ApartamentFiltersNotifier create() => ApartamentFiltersNotifier();
}

String _$apartamentFiltersNotifierHash() =>
    r'd7c19b1036043f6d5d1dc6cfa07ce75e84e6d376';

abstract class _$ApartamentFiltersNotifier extends $AsyncNotifier<FilterModel> {
  FutureOr<FilterModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FilterModel>, FilterModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FilterModel>, FilterModel>,
              AsyncValue<FilterModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
