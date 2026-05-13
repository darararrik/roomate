import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsRepositoryImpl implements IGroupsRepository {
  GroupsRepositoryImpl(this._dataSource);

  final GroupsDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<GroupModel>>> fetchGroups({
    WhoSearchFilterModel? filter,
  }) {
    return _dataSource.fetchGroups(filter: filter);
  }

  @override
  Future<Either<RemoteException, GroupModel>> fetchGroupById(String groupId) {
    return _dataSource.fetchGroupById(groupId);
  }

  @override
  Future<Either<RemoteException, CreateGroupFormOptionsModel>>
  fetchCreateGroupFormOptions() {
    return _dataSource.fetchCreateGroupFormOptions();
  }

  @override
  Future<Either<RemoteException, GroupConditionsModel>> fetchGroupConditions(
    String groupId,
  ) {
    return _dataSource.fetchGroupConditions(groupId);
  }

  @override
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId) {
    return _dataSource.fetchGroupParticipantById(participantId);
  }

  @override
  Future<Either<RemoteException, void>> applyToGroup(String groupId) {
    return _dataSource.applyToGroup(groupId);
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
