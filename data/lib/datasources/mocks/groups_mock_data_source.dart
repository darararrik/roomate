import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsMockDataSource implements GroupsDataSource {
  @override
  Future<Either<RemoteException, List<GroupModel>>> fetchGroups() async {
    await Future.delayed(const Duration(milliseconds: 250));

    return Right(
      GroupsMockJson.fetchGroups
          .map((item) => GroupData.fromJson(item))
          .map(GroupMapper.toModel)
          .toList(),
    );
  }

  @override
  Future<Either<RemoteException, GroupModel>> fetchGroupById(
    String groupId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 250));

    for (final item in GroupsMockJson.fetchGroups) {
      if (item['id'] == groupId) {
        return Right(GroupMapper.toModel(GroupData.fromJson(item)));
      }
    }

    return Left(
      RemoteException(
        kind: RemoteExceptionKind.serverDefined,
        rootException: Exception('Group not found'),
      ),
    );
  }

  @override
  Future<Either<RemoteException, GroupConditionsModel>> fetchGroupConditions(
    String groupId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 250));

    final json = GroupsMockJson.fetchGroupConditions[groupId];
    if (json == null) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverDefined,
          rootException: Exception('Group conditions not found'),
        ),
      );
    }

    return Right(
      GroupMapper.toConditionsModel(GroupConditionsData.fromJson(json)),
    );
  }

  @override
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId) async {
    await Future.delayed(const Duration(milliseconds: 250));

    final json = GroupsMockJson.fetchParticipantProfiles[participantId];
    if (json == null) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverDefined,
          rootException: Exception('Participant not found'),
        ),
      );
    }

    return Right(
      GroupMapper.toParticipantProfileModel(
        ParticipantProfileData.fromJson(json),
      ),
    );
  }

  @override
  Future<Either<RemoteException, void>> applyToGroup(String groupId) async {
    await Future.delayed(const Duration(milliseconds: 250));
    return const Right(null);
  }
}
