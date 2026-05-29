// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_form_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCreateGroupFormOptions)
final getCreateGroupFormOptionsProvider = GetCreateGroupFormOptionsProvider._();

final class GetCreateGroupFormOptionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<CreateGroupFormOptionsModel>,
          CreateGroupFormOptionsModel,
          FutureOr<CreateGroupFormOptionsModel>
        >
    with
        $FutureModifier<CreateGroupFormOptionsModel>,
        $FutureProvider<CreateGroupFormOptionsModel> {
  GetCreateGroupFormOptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCreateGroupFormOptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCreateGroupFormOptionsHash();

  @$internal
  @override
  $FutureProviderElement<CreateGroupFormOptionsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CreateGroupFormOptionsModel> create(Ref ref) {
    return getCreateGroupFormOptions(ref);
  }
}

String _$getCreateGroupFormOptionsHash() =>
    r'9e87ac16eccb1b65c94a486bb85b146a760a168e';

@ProviderFor(selectedGroupLocationName)
final selectedGroupLocationNameProvider = SelectedGroupLocationNameProvider._();

final class SelectedGroupLocationNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  SelectedGroupLocationNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedGroupLocationNameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedGroupLocationNameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return selectedGroupLocationName(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedGroupLocationNameHash() =>
    r'90d284ea6410472e5540667b413ede19acea6174';

@ProviderFor(GroupFormNotifier)
final groupFormProvider = GroupFormNotifierProvider._();

final class GroupFormNotifierProvider
    extends $NotifierProvider<GroupFormNotifier, CreateGroupFormModel> {
  GroupFormNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupFormProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupFormNotifierHash();

  @$internal
  @override
  GroupFormNotifier create() => GroupFormNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateGroupFormModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateGroupFormModel>(value),
    );
  }
}

String _$groupFormNotifierHash() => r'3c4fca7e8ecc5aa507e832922f2bf382bc78fc22';

abstract class _$GroupFormNotifier extends $Notifier<CreateGroupFormModel> {
  CreateGroupFormModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateGroupFormModel, CreateGroupFormModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateGroupFormModel, CreateGroupFormModel>,
              CreateGroupFormModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
