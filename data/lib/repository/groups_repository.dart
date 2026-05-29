import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class GroupsRepositoryImpl implements IGroupsRepository {
  GroupsRepositoryImpl(this._dataSource);

  final GroupsDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<GroupListItemModel>>> fetchGroups({
    WhoSearchFilterModel? filter,
  }) {
    return _dataSource.fetchGroups(filter: filter);
  }

  @override
  Future<Either<RemoteException, GroupDetailModel>> fetchGroupById(
    String groupId,
  ) {
    return _dataSource.fetchGroupById(groupId);
  }

  @override
  Future<Either<RemoteException, CreateGroupFormOptionsModel>> fetchTags() {
    return _dataSource.fetchTags();
  }

  @override
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId) {
    return _dataSource.fetchGroupParticipantById(participantId);
  }

  @override
  Future<Either<RemoteException, GroupApplicationModel>> applyToGroup(
    String groupId,
  ) {
    return _dataSource.applyToGroup(groupId);
  }

  @override
  Future<Either<RemoteException, List<IncomingGroupApplicationModel>>>
  fetchIncomingGroupApplications({AdApplicationStatus? status}) {
    return _dataSource.fetchIncomingGroupApplications(status: status?.value);
  }

  @override
  Future<Either<RemoteException, IncomingGroupApplicationDetailModel>>
  fetchIncomingGroupApplicationDetails(String applicationId) {
    return _dataSource.fetchIncomingGroupApplicationDetails(applicationId);
  }

  @override
  Future<Either<RemoteException, void>> rejectIncomingGroupApplication(
    String applicationId,
  ) {
    return _dataSource.rejectIncomingGroupApplication(applicationId);
  }

  @override
  Future<Either<RemoteException, void>> acceptIncomingGroupApplication(
    String applicationId,
  ) {
    return _dataSource.acceptIncomingGroupApplication(applicationId);
  }

  @override
  Future<Either<RemoteException, void>> addGroupToFavorites(String groupId) {
    return _dataSource.addGroupToFavorites(groupId);
  }

  @override
  Future<Either<RemoteException, void>> removeGroupFromFavorites(
    String groupId,
  ) {
    return _dataSource.removeGroupFromFavorites(groupId);
  }

  @override
  Future<Either<RemoteException, void>> createGroup(CreateGroupFormModel form) {
    return _dataSource.createGroup(form);
  }
}
