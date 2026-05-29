import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:shared/shared.dart';

part 'my_group_applications_notifier.g.dart';

@riverpod
Future<List<IncomingGroupApplicationModel>> applicationsForGroups(
  Ref ref,
) async {
  final result = await ref
      .read(groupsRepositoryProvider)
      .fetchIncomingGroupApplications();
  return result.fold((error) => throw error, (items) => items);
}

@riverpod
Future<List<IncomingGroupApplicationModel>> applicationsForGroupsByStatus(
  Ref ref,
  AdApplicationStatus status,
) async {
  final result = await ref
      .read(groupsRepositoryProvider)
      .fetchIncomingGroupApplications(status: status);
  return result.fold((error) => throw error, (items) => items);
}

@riverpod
Future<IncomingGroupApplicationDetailModel> applicationDetailForGroup(
  Ref ref,
  String applicationId,
) async {
  final result = await ref
      .read(groupsRepositoryProvider)
      .fetchIncomingGroupApplicationDetails(applicationId);
  return result.fold((error) => throw error, (item) => item);
}

@riverpod
class IncomingGroupApplicationAction extends _$IncomingGroupApplicationAction {
  @override
  bool build() {
    return false;
  }

  Future<RemoteException?> accept(String applicationId) async {
    state = true;
    final result = await ref
        .read(groupsRepositoryProvider)
        .acceptIncomingGroupApplication(applicationId);
    state = false;
    return result.fold((error) => error, (_) {
      ref.invalidate(applicationsForGroupsProvider);
      for (final status in AdApplicationStatus.values) {
        ref.invalidate(applicationsForGroupsByStatusProvider(status));
      }
      ref.invalidate(applicationDetailForGroupProvider(applicationId));
      ref.invalidate(myGroupApplicationDetailProvider(applicationId));
      return null;
    });
  }

  Future<RemoteException?> reject(String applicationId) async {
    state = true;
    final result = await ref
        .read(groupsRepositoryProvider)
        .rejectIncomingGroupApplication(applicationId);
    state = false;
    return result.fold((error) => error, (_) {
      ref.invalidate(applicationsForGroupsProvider);
      for (final status in AdApplicationStatus.values) {
        ref.invalidate(applicationsForGroupsByStatusProvider(status));
      }
      ref.invalidate(applicationDetailForGroupProvider(applicationId));
      ref.invalidate(myGroupApplicationDetailProvider(applicationId));
      return null;
    });
  }
}
