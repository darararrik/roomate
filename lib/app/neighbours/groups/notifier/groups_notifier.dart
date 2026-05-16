import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/app/neighbours/filters/notifier/who_search_filter_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'groups_notifier.g.dart';

@Riverpod(keepAlive: true)
class GroupsNotifier extends _$GroupsNotifier {
  IGroupsRepository get _repository => ref.read(groupsRepositoryProvider);

  @override
  Future<List<GroupListItemModel>> build() async {
    final result = await _repository.fetchGroups(
      filter: ref.read(whoSearchFilterProvider),
    );
    return result.fold((error) => throw error, (groups) => groups);
  }

  void openGroup(String groupId) {
    ref.nav.push(AboutGroupRoute(groupId: groupId));
  }

  Future<void> fetchWithFilter(WhoSearchFilterModel filter) async {
    state = const AsyncLoading();
    final result = await _repository.fetchGroups(filter: filter);
    state = result.fold(
      (error) => AsyncError(error, StackTrace.current),
      AsyncData.new,
    );
  }
}
