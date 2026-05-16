// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_flow_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateGroupFlow)
final createGroupFlowProvider = CreateGroupFlowProvider._();

final class CreateGroupFlowProvider
    extends $NotifierProvider<CreateGroupFlow, CreateGroupFlowState> {
  CreateGroupFlowProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createGroupFlowProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createGroupFlowHash();

  @$internal
  @override
  CreateGroupFlow create() => CreateGroupFlow();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateGroupFlowState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateGroupFlowState>(value),
    );
  }
}

String _$createGroupFlowHash() => r'125fa7189b55b845f387c70d3f67e25a19bc288c';

abstract class _$CreateGroupFlow extends $Notifier<CreateGroupFlowState> {
  CreateGroupFlowState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateGroupFlowState, CreateGroupFlowState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateGroupFlowState, CreateGroupFlowState>,
              CreateGroupFlowState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
