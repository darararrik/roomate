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
    extends $AsyncNotifierProvider<GroupsNotifier, List<GroupListItemModel>> {
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

String _$groupsNotifierHash() => r'40fa7671f55e02d87690598346b3c84ce16d9a83';

abstract class _$GroupsNotifier
    extends $AsyncNotifier<List<GroupListItemModel>> {
  FutureOr<List<GroupListItemModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<GroupListItemModel>>,
              List<GroupListItemModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<GroupListItemModel>>,
                List<GroupListItemModel>
              >,
              AsyncValue<List<GroupListItemModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
