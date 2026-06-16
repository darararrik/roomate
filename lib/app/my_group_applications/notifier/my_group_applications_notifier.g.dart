// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_group_applications_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(applicationsForGroups)
final applicationsForGroupsProvider = ApplicationsForGroupsProvider._();

final class ApplicationsForGroupsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<IncomingGroupApplicationModel>>,
          List<IncomingGroupApplicationModel>,
          FutureOr<List<IncomingGroupApplicationModel>>
        >
    with
        $FutureModifier<List<IncomingGroupApplicationModel>>,
        $FutureProvider<List<IncomingGroupApplicationModel>> {
  ApplicationsForGroupsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsForGroupsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsForGroupsHash();

  @$internal
  @override
  $FutureProviderElement<List<IncomingGroupApplicationModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<IncomingGroupApplicationModel>> create(Ref ref) {
    return applicationsForGroups(ref);
  }
}

String _$applicationsForGroupsHash() =>
    r'4be3cda2a453eeb936066a934e4eedbf41a365a5';

@ProviderFor(applicationsForGroupsByStatus)
final applicationsForGroupsByStatusProvider =
    ApplicationsForGroupsByStatusFamily._();

final class ApplicationsForGroupsByStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<IncomingGroupApplicationModel>>,
          List<IncomingGroupApplicationModel>,
          FutureOr<List<IncomingGroupApplicationModel>>
        >
    with
        $FutureModifier<List<IncomingGroupApplicationModel>>,
        $FutureProvider<List<IncomingGroupApplicationModel>> {
  ApplicationsForGroupsByStatusProvider._({
    required ApplicationsForGroupsByStatusFamily super.from,
    required AdApplicationStatus super.argument,
  }) : super(
         retry: null,
         name: r'applicationsForGroupsByStatusProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$applicationsForGroupsByStatusHash();

  @override
  String toString() {
    return r'applicationsForGroupsByStatusProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<IncomingGroupApplicationModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<IncomingGroupApplicationModel>> create(Ref ref) {
    final argument = this.argument as AdApplicationStatus;
    return applicationsForGroupsByStatus(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationsForGroupsByStatusProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$applicationsForGroupsByStatusHash() =>
    r'69eb2e8373622c24d83e1104c3db83259c969aed';

final class ApplicationsForGroupsByStatusFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<IncomingGroupApplicationModel>>,
          AdApplicationStatus
        > {
  ApplicationsForGroupsByStatusFamily._()
    : super(
        retry: null,
        name: r'applicationsForGroupsByStatusProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApplicationsForGroupsByStatusProvider call(AdApplicationStatus status) =>
      ApplicationsForGroupsByStatusProvider._(argument: status, from: this);

  @override
  String toString() => r'applicationsForGroupsByStatusProvider';
}

@ProviderFor(applicationDetailForGroup)
final applicationDetailForGroupProvider = ApplicationDetailForGroupFamily._();

final class ApplicationDetailForGroupProvider
    extends
        $FunctionalProvider<
          AsyncValue<IncomingGroupApplicationDetailModel>,
          IncomingGroupApplicationDetailModel,
          FutureOr<IncomingGroupApplicationDetailModel>
        >
    with
        $FutureModifier<IncomingGroupApplicationDetailModel>,
        $FutureProvider<IncomingGroupApplicationDetailModel> {
  ApplicationDetailForGroupProvider._({
    required ApplicationDetailForGroupFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'applicationDetailForGroupProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$applicationDetailForGroupHash();

  @override
  String toString() {
    return r'applicationDetailForGroupProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<IncomingGroupApplicationDetailModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IncomingGroupApplicationDetailModel> create(Ref ref) {
    final argument = this.argument as String;
    return applicationDetailForGroup(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationDetailForGroupProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$applicationDetailForGroupHash() =>
    r'550c79f92c6d893e85853319cff8fd971f9f3f22';

final class ApplicationDetailForGroupFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<IncomingGroupApplicationDetailModel>,
          String
        > {
  ApplicationDetailForGroupFamily._()
    : super(
        retry: null,
        name: r'applicationDetailForGroupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApplicationDetailForGroupProvider call(String applicationId) =>
      ApplicationDetailForGroupProvider._(argument: applicationId, from: this);

  @override
  String toString() => r'applicationDetailForGroupProvider';
}

@ProviderFor(IncomingGroupApplicationAction)
final incomingGroupApplicationActionProvider =
    IncomingGroupApplicationActionProvider._();

final class IncomingGroupApplicationActionProvider
    extends $NotifierProvider<IncomingGroupApplicationAction, bool> {
  IncomingGroupApplicationActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'incomingGroupApplicationActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$incomingGroupApplicationActionHash();

  @$internal
  @override
  IncomingGroupApplicationAction create() => IncomingGroupApplicationAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$incomingGroupApplicationActionHash() =>
    r'f8c1b6999bab8dfebbf317bb51e47fa837f10d5a';

abstract class _$IncomingGroupApplicationAction extends $Notifier<bool> {
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
