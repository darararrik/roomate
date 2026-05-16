import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';

part 'group_participant_profile_notifier.g.dart';

@riverpod
class GroupParticipantProfile extends _$GroupParticipantProfile {
  IGroupsRepository get _repository => ref.read(groupsRepositoryProvider);

  @override
  Future<ParticipantProfileModel> build(String participantId) async {
    final result = await _repository.fetchGroupParticipantById(participantId);
    return result.fold((error) => throw error, (model) => model);
  }
}
