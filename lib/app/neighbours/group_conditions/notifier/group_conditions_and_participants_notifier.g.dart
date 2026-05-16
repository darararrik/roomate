// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_conditions_and_participants_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GroupConditionsAndParticipants)
final groupConditionsAndParticipantsProvider =
    GroupConditionsAndParticipantsFamily._();

final class GroupConditionsAndParticipantsProvider
    extends
        $AsyncNotifierProvider<
          GroupConditionsAndParticipants,
          GroupConditionsModel
        > {
  GroupConditionsAndParticipantsProvider._({
    required GroupConditionsAndParticipantsFamily super.from,
    required GroupConditionsModel super.argument,
  }) : super(
         retry: null,
         name: r'groupConditionsAndParticipantsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupConditionsAndParticipantsHash();

  @override
  String toString() {
    return r'groupConditionsAndParticipantsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GroupConditionsAndParticipants create() => GroupConditionsAndParticipants();

  @override
  bool operator ==(Object other) {
    return other is GroupConditionsAndParticipantsProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupConditionsAndParticipantsHash() =>
    r'82c466b40364619d36a8ed21a01d2fcd555c39d4';

final class GroupConditionsAndParticipantsFamily extends $Family
    with
        $ClassFamilyOverride<
          GroupConditionsAndParticipants,
          AsyncValue<GroupConditionsModel>,
          GroupConditionsModel,
          FutureOr<GroupConditionsModel>,
          GroupConditionsModel
        > {
  GroupConditionsAndParticipantsFamily._()
    : super(
        retry: null,
        name: r'groupConditionsAndParticipantsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GroupConditionsAndParticipantsProvider call(
    GroupConditionsModel conditions,
  ) => GroupConditionsAndParticipantsProvider._(
    argument: conditions,
    from: this,
  );

  @override
  String toString() => r'groupConditionsAndParticipantsProvider';
}

abstract class _$GroupConditionsAndParticipants
    extends $AsyncNotifier<GroupConditionsModel> {
  late final _$args = ref.$arg as GroupConditionsModel;
  GroupConditionsModel get conditions => _$args;

  FutureOr<GroupConditionsModel> build(GroupConditionsModel conditions);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<GroupConditionsModel>, GroupConditionsModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<GroupConditionsModel>,
                GroupConditionsModel
              >,
              AsyncValue<GroupConditionsModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
