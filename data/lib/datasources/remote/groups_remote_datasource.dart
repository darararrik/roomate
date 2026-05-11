import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsRemoteDataSource implements GroupsDataSource {
  GroupsRemoteDataSource(this._client);

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<GroupModel>>> fetchGroups() async {
    return _client.get<List<GroupModel>>(
      ApiUrlConstants.groups,
      transformer: (json) => (json as List<dynamic>)
          .map((item) => GroupData.fromJson(item as Map<String, dynamic>))
          .map(GroupMapper.toModel)
          .toList(),
    );
  }

  @override
  Future<Either<RemoteException, GroupModel>> fetchGroupById(
    String groupId,
  ) async {
    return _client.get<GroupModel>(
      ApiUrlConstants.group(groupId),
      transformer: (json) =>
          GroupMapper.toModel(GroupData.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<Either<RemoteException, GroupConditionsModel>> fetchGroupConditions(
    String groupId,
  ) async {
    return _client.get<GroupConditionsModel>(
      ApiUrlConstants.groupConditions(groupId),
      transformer: (json) => GroupMapper.toConditionsModel(
        GroupConditionsData.fromJson(json as Map<String, dynamic>),
      ),
    );
  }

  @override
  Future<Either<RemoteException, ParticipantProfileModel>>
  fetchGroupParticipantById(String participantId) async {
    return _client.get<ParticipantProfileModel>(
      ApiUrlConstants.groupParticipant(participantId),
      transformer: (json) => GroupMapper.toParticipantProfileModel(
        ParticipantProfileData.fromJson(json as Map<String, dynamic>),
      ),
    );
  }

  @override
  Future<Either<RemoteException, void>> applyToGroup(String groupId) async {
    return _client.post<void>(
      ApiUrlConstants.groupApply(groupId),
      needAuth: true,
      transformer: (_) {},
    );
  }
}
