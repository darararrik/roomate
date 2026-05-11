import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsRepositoryImpl implements IGroupsRepository {
  GroupsRepositoryImpl(this._dataSource);

  final GroupsDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<GroupModel>>> fetchGroups() {
    return _dataSource.fetchGroups();
  }

  @override
  Future<Either<RemoteException, GroupModel>> fetchGroupById(String groupId) {
    return _dataSource.fetchGroupById(groupId);
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
}
