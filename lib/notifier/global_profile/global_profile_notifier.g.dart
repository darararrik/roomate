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
    extends $AsyncNotifierProvider<GlobalProfileNotifier, UserModel> {
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
    r'7bc5df38c6d6f084aa50485f5638ad1a346319db';

abstract class _$GlobalProfileNotifier extends $AsyncNotifier<UserModel> {
  FutureOr<UserModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserModel>, UserModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserModel>, UserModel>,
              AsyncValue<UserModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
