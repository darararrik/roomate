// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateProfileNotifier)
final createProfileProvider = CreateProfileNotifierProvider._();

final class CreateProfileNotifierProvider
    extends $NotifierProvider<CreateProfileNotifier, UserState> {
  CreateProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createProfileNotifierHash();

  @$internal
  @override
  CreateProfileNotifier create() => CreateProfileNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserState>(value),
    );
  }
}

String _$createProfileNotifierHash() =>
    r'20fe92121b030b1ac8054e35579a8236306a9721';

abstract class _$CreateProfileNotifier extends $Notifier<UserState> {
  UserState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<UserState, UserState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserState, UserState>,
              UserState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
