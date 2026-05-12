// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateGroupStepIndex)
final createGroupStepIndexProvider = CreateGroupStepIndexProvider._();

final class CreateGroupStepIndexProvider
    extends $NotifierProvider<CreateGroupStepIndex, int> {
  CreateGroupStepIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createGroupStepIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createGroupStepIndexHash();

  @$internal
  @override
  CreateGroupStepIndex create() => CreateGroupStepIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$createGroupStepIndexHash() =>
    r'7aea72a433ace81b866d1cef34206e54f5ff4074';

abstract class _$CreateGroupStepIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
