// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_advertisements_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Получить мои объявдления за собсвтенника

@ProviderFor(myAds)
final myAdsProvider = MyAdsProvider._();

/// Получить мои объявдления за собсвтенника

final class MyAdsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MyAdModel>>,
          List<MyAdModel>,
          FutureOr<List<MyAdModel>>
        >
    with $FutureModifier<List<MyAdModel>>, $FutureProvider<List<MyAdModel>> {
  /// Получить мои объявдления за собсвтенника
  MyAdsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myAdsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myAdsHash();

  @$internal
  @override
  $FutureProviderElement<List<MyAdModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<MyAdModel>> create(Ref ref) {
    return myAds(ref);
  }
}

String _$myAdsHash() => r'b3a1a2e3153a0ae3be4a13573e62eff9c38ef1e8';

/// Получить заявки от арендторов за собственника

@ProviderFor(applicationsForAds)
final applicationsForAdsProvider = ApplicationsForAdsProvider._();

/// Получить заявки от арендторов за собственника

final class ApplicationsForAdsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AdApplicationModel>>,
          List<AdApplicationModel>,
          FutureOr<List<AdApplicationModel>>
        >
    with
        $FutureModifier<List<AdApplicationModel>>,
        $FutureProvider<List<AdApplicationModel>> {
  /// Получить заявки от арендторов за собственника
  ApplicationsForAdsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsForAdsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsForAdsHash();

  @$internal
  @override
  $FutureProviderElement<List<AdApplicationModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AdApplicationModel>> create(Ref ref) {
    return applicationsForAds(ref);
  }
}

String _$applicationsForAdsHash() =>
    r'ed7f6d1dcbe6d281df46f54eb18f9c69685caef5';

@ProviderFor(applicationsForAdsByStatus)
final applicationsForAdsByStatusProvider = ApplicationsForAdsByStatusFamily._();

final class ApplicationsForAdsByStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AdApplicationModel>>,
          List<AdApplicationModel>,
          FutureOr<List<AdApplicationModel>>
        >
    with
        $FutureModifier<List<AdApplicationModel>>,
        $FutureProvider<List<AdApplicationModel>> {
  ApplicationsForAdsByStatusProvider._({
    required ApplicationsForAdsByStatusFamily super.from,
    required AdApplicationStatus super.argument,
  }) : super(
         retry: null,
         name: r'applicationsForAdsByStatusProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$applicationsForAdsByStatusHash();

  @override
  String toString() {
    return r'applicationsForAdsByStatusProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AdApplicationModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AdApplicationModel>> create(Ref ref) {
    final argument = this.argument as AdApplicationStatus;
    return applicationsForAdsByStatus(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationsForAdsByStatusProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$applicationsForAdsByStatusHash() =>
    r'ffe13f94e38c52a569569367733f3084fc8f13b4';

final class ApplicationsForAdsByStatusFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<AdApplicationModel>>,
          AdApplicationStatus
        > {
  ApplicationsForAdsByStatusFamily._()
    : super(
        retry: null,
        name: r'applicationsForAdsByStatusProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApplicationsForAdsByStatusProvider call(AdApplicationStatus status) =>
      ApplicationsForAdsByStatusProvider._(argument: status, from: this);

  @override
  String toString() => r'applicationsForAdsByStatusProvider';
}

@ProviderFor(applicationDetailForAd)
final applicationDetailForAdProvider = ApplicationDetailForAdFamily._();

final class ApplicationDetailForAdProvider
    extends
        $FunctionalProvider<
          AsyncValue<AdApplicationDetailModel>,
          AdApplicationDetailModel,
          FutureOr<AdApplicationDetailModel>
        >
    with
        $FutureModifier<AdApplicationDetailModel>,
        $FutureProvider<AdApplicationDetailModel> {
  ApplicationDetailForAdProvider._({
    required ApplicationDetailForAdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'applicationDetailForAdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$applicationDetailForAdHash();

  @override
  String toString() {
    return r'applicationDetailForAdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<AdApplicationDetailModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AdApplicationDetailModel> create(Ref ref) {
    final argument = this.argument as String;
    return applicationDetailForAd(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationDetailForAdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$applicationDetailForAdHash() =>
    r'1a4ef4edbc129c044ec597c75690b992e1e881c4';

final class ApplicationDetailForAdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<AdApplicationDetailModel>, String> {
  ApplicationDetailForAdFamily._()
    : super(
        retry: null,
        name: r'applicationDetailForAdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApplicationDetailForAdProvider call(String applicationId) =>
      ApplicationDetailForAdProvider._(argument: applicationId, from: this);

  @override
  String toString() => r'applicationDetailForAdProvider';
}

@ProviderFor(IncomingAdApplicationAction)
final incomingAdApplicationActionProvider =
    IncomingAdApplicationActionProvider._();

final class IncomingAdApplicationActionProvider
    extends $NotifierProvider<IncomingAdApplicationAction, bool> {
  IncomingAdApplicationActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'incomingAdApplicationActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$incomingAdApplicationActionHash();

  @$internal
  @override
  IncomingAdApplicationAction create() => IncomingAdApplicationAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$incomingAdApplicationActionHash() =>
    r'8b807941b58cd794b3f34bc9bf6d9a3c7ff0a345';

abstract class _$IncomingAdApplicationAction extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
