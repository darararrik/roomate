import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class GroupsDataSource {
  Future<Either<RemoteException, List<GroupModel>>> fetchGroups();
  Future<Either<RemoteException, GroupModel>> fetchGroupById(String groupId);
  Future<Either<RemoteException, CreateGroupFormOptionsModel>>
  fetchCreateGroupFormOptions();
  Future<Either<RemoteException, GroupConditionsModel>> fetchGroupConditions(
    String groupId,
  );
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId);
  Future<Either<RemoteException, void>> applyToGroup(String groupId);
  Future<Either<RemoteException, void>> createGroup(CreateGroupFormModel form);
}
