// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GlobalProfileNotifier)
final globalProfileProvider = GlobalProfileNotifierProvider._();

final class GlobalProfileNotifierProvider
    extends $AsyncNotifierProvider<GlobalProfileNotifier, ProfileModel> {
  GlobalProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'globalProfileProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$globalProfileNotifierHash();

  @$internal
  @override
  GlobalProfileNotifier create() => GlobalProfileNotifier();
}

String _$globalProfileNotifierHash() =>
    r'ce8d1677d9140d5b61785e4689d834e9f2de70d9';

abstract class _$GlobalProfileNotifier extends $AsyncNotifier<ProfileModel> {
  FutureOr<ProfileModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProfileModel>, ProfileModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProfileModel>, ProfileModel>,
              AsyncValue<ProfileModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
