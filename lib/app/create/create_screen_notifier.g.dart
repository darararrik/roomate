// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_screen_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateScreenNotifier)
final createScreenProvider = CreateScreenNotifierProvider._();

final class CreateScreenNotifierProvider
    extends $NotifierProvider<CreateScreenNotifier, bool> {
  CreateScreenNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createScreenProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createScreenNotifierHash();

  @$internal
  @override
  CreateScreenNotifier create() => CreateScreenNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$createScreenNotifierHash() =>
    r'7575daad4cbbfb8b50f643ca3f30485192f0ef73';

abstract class _$CreateScreenNotifier extends $Notifier<bool> {
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
