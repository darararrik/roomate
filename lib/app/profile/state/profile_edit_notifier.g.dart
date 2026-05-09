// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileEditNotifier)
final profileEditProvider = ProfileEditNotifierProvider._();

final class ProfileEditNotifierProvider
    extends $NotifierProvider<ProfileEditNotifier, ProfileEditState> {
  ProfileEditNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileEditProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileEditNotifierHash();

  @$internal
  @override
  ProfileEditNotifier create() => ProfileEditNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileEditState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileEditState>(value),
    );
  }
}

String _$profileEditNotifierHash() =>
    r'35e25f89832bd0f4e8b34eb1884360f75f1f8c2e';

abstract class _$ProfileEditNotifier extends $Notifier<ProfileEditState> {
  ProfileEditState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProfileEditState, ProfileEditState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileEditState, ProfileEditState>,
              ProfileEditState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
