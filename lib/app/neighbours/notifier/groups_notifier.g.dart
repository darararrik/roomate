// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GroupsNotifier)
final groupsProvider = GroupsNotifierProvider._();

final class GroupsNotifierProvider
    extends $AsyncNotifierProvider<GroupsNotifier, List<GroupModel>> {
  GroupsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupsNotifierHash();

  @$internal
  @override
  GroupsNotifier create() => GroupsNotifier();
}

String _$groupsNotifierHash() => r'a774717963dd4bd90c79072e79876f738ba4fb2b';

abstract class _$GroupsNotifier extends $AsyncNotifier<List<GroupModel>> {
  FutureOr<List<GroupModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<GroupModel>>, List<GroupModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<GroupModel>>, List<GroupModel>>,
              AsyncValue<List<GroupModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
