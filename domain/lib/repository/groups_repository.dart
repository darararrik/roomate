import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class IGroupsRepository {
  Future<Either<RemoteException, List<GroupListItemModel>>> fetchGroups({
    WhoSearchFilterModel? filter,
  });
  Future<Either<RemoteException, GroupDetailModel>> fetchGroupById(
    String groupId,
  );
  Future<Either<RemoteException, CreateGroupFormOptionsModel>> fetchTags();
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId);
  Future<Either<RemoteException, GroupApplicationModel>> applyToGroup(
    String groupId,
  );
  Future<Either<RemoteException, void>> addGroupToFavorites(String groupId);
  Future<Either<RemoteException, void>> removeGroupFromFavorites(
    String groupId,
  );
  Future<Either<RemoteException, void>> createGroup(CreateGroupFormModel form);
}
