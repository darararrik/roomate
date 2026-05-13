// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_search_filter_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
    r'28450e25a91fec8e8165c474feb21bdeafb9514c';

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
