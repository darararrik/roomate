// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_participant_profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GroupParticipantProfile)
final groupParticipantProfileProvider = GroupParticipantProfileFamily._();

final class GroupParticipantProfileProvider
    extends
        $AsyncNotifierProvider<
          GroupParticipantProfile,
          ParticipantProfileModel
        > {
  GroupParticipantProfileProvider._({
    required GroupParticipantProfileFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'groupParticipantProfileProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupParticipantProfileHash();

  @override
  String toString() {
    return r'groupParticipantProfileProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GroupParticipantProfile create() => GroupParticipantProfile();

  @override
  bool operator ==(Object other) {
    return other is GroupParticipantProfileProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupParticipantProfileHash() =>
    r'87ceadfcf69e704457513963f9a42b3aa12ac52c';

final class GroupParticipantProfileFamily extends $Family
    with
        $ClassFamilyOverride<
          GroupParticipantProfile,
          AsyncValue<ParticipantProfileModel>,
          ParticipantProfileModel,
          FutureOr<ParticipantProfileModel>,
          String
        > {
  GroupParticipantProfileFamily._()
    : super(
        retry: null,
        name: r'groupParticipantProfileProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GroupParticipantProfileProvider call(String participantId) =>
      GroupParticipantProfileProvider._(argument: participantId, from: this);

  @override
  String toString() => r'groupParticipantProfileProvider';
}

abstract class _$GroupParticipantProfile
    extends $AsyncNotifier<ParticipantProfileModel> {
  late final _$args = ref.$arg as String;
  String get participantId => _$args;

  FutureOr<ParticipantProfileModel> build(String participantId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<ParticipantProfileModel>,
              ParticipantProfileModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ParticipantProfileModel>,
                ParticipantProfileModel
              >,
              AsyncValue<ParticipantProfileModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
