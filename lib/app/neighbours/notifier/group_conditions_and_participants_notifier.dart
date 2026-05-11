import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'group_conditions_and_participants_notifier.g.dart';

@riverpod
class GroupConditionsAndParticipants extends _$GroupConditionsAndParticipants {
  IGroupsRepository get _repository => ref.read(groupsRepositoryProvider);

  @override
  Future<GroupConditionsModel> build(String groupId) async {
    final result = await _repository.fetchGroupConditions(groupId);
    return result.fold((error) => throw error, (model) => model);
  }

  void openParticipant(String participantId) {
    ref.nav.push(GroupParticipantProfileRoute(participantId: participantId));
  }
}
