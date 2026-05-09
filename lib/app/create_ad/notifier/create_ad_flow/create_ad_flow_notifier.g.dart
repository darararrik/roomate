// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_flow_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateAdFlow)
final createAdFlowProvider = CreateAdFlowProvider._();

final class CreateAdFlowProvider
    extends $NotifierProvider<CreateAdFlow, CreateAdFlowState> {
  CreateAdFlowProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAdFlowProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAdFlowHash();

  @$internal
  @override
  CreateAdFlow create() => CreateAdFlow();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAdFlowState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAdFlowState>(value),
    );
  }
}

String _$createAdFlowHash() => r'4a4744ba4c7360d90b3caa2ebc62e8173bf5d169';

abstract class _$CreateAdFlow extends $Notifier<CreateAdFlowState> {
  CreateAdFlowState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateAdFlowState, CreateAdFlowState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAdFlowState, CreateAdFlowState>,
              CreateAdFlowState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
