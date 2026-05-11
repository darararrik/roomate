import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'groups_notifier.g.dart';

@Riverpod(keepAlive: true)
class GroupsNotifier extends _$GroupsNotifier {
  IGroupsRepository get _repository => ref.read(groupsRepositoryProvider);

  @override
  Future<List<GroupModel>> build() async {
    final result = await _repository.fetchGroups();
    return result.fold((error) => throw error, (groups) => groups);
  }

  void openGroup(String groupId) {
    ref.nav.push(AboutGroupRoute(groupId: groupId));
  }
}
