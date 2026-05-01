// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_boarding_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnBoardingNotifier)
final onBoardingProvider = OnBoardingNotifierProvider._();

final class OnBoardingNotifierProvider
    extends $NotifierProvider<OnBoardingNotifier, OnBoardingState> {
  OnBoardingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onBoardingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onBoardingNotifierHash();

  @$internal
  @override
  OnBoardingNotifier create() => OnBoardingNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnBoardingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnBoardingState>(value),
    );
  }
}

String _$onBoardingNotifierHash() =>
    r'712b8cab4a24ac5d74827aa20f3ef595b2c5cacb';

abstract class _$OnBoardingNotifier extends $Notifier<OnBoardingState> {
  OnBoardingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OnBoardingState, OnBoardingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OnBoardingState, OnBoardingState>,
              OnBoardingState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
