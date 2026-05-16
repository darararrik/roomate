import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'group_conditions_and_participants_notifier.g.dart';

@riverpod
class GroupConditionsAndParticipants extends _$GroupConditionsAndParticipants {
  @override
  Future<GroupConditionsModel> build(GroupConditionsModel conditions) async {
    return conditions;
  }

  void openParticipant(String participantId) {
    ref.nav.push(GroupParticipantProfileRoute(participantId: participantId));
  }
}
