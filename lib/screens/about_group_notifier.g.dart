// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_group_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AboutGroup)
final aboutGroupProvider = AboutGroupProvider._();

final class AboutGroupProvider
    extends $NotifierProvider<AboutGroup, AboutGroupState> {
  AboutGroupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aboutGroupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aboutGroupHash();

  @$internal
  @override
  AboutGroup create() => AboutGroup();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AboutGroupState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AboutGroupState>(value),
    );
  }
}

String _$aboutGroupHash() => r'836fae8a0f868e908201ef89ae03f9304257a024';

abstract class _$AboutGroup extends $Notifier<AboutGroupState> {
  AboutGroupState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AboutGroupState, AboutGroupState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AboutGroupState, AboutGroupState>,
              AboutGroupState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
