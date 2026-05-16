import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class GroupsRemoteDataSource implements GroupsDataSource {
  GroupsRemoteDataSource(this._client);

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<GroupListItemModel>>> fetchGroups({
    WhoSearchFilterModel? filter,
  }) async {
    final result = await _client.get<GroupsResponseData>(
      ApiUrlConstants.groups,
      query: GroupFilterMapper.toData(
        filter ?? const WhoSearchFilterModel(),
      ).toJson(),
      transformer: (json) =>
          GroupsResponseData.fromJson(json as Map<String, dynamic>),
    );
    return result.fold(
      Left.new,
      (data) => Right(data.items.map(GroupMapper.toListItemModel).toList()),
    );
  }

  @override
  Future<Either<RemoteException, GroupDetailModel>> fetchGroupById(
    String groupId,
  ) async {
    return _client.get<GroupDetailModel>(
      needAuth: true,
      ApiUrlConstants.group(groupId),
      transformer: (json) => GroupMapper.toDetailModel(
        GroupDetailData.fromJson(json as Map<String, dynamic>),
      ),
    );
  }

  @override
  Future<Either<RemoteException, CreateGroupFormOptionsModel>>
  fetchTags() async {
    final result = await _client.get<CreateGroupFormOptionsData>(
      ApiUrlConstants.groupFormOptions,
      transformer: (json) =>
          CreateGroupFormOptionsData.fromJson(json as Map<String, dynamic>),
    );
    return result.fold(Left.new, (data) => Right(data.toModel()));
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
  Future<Either<RemoteException, GroupApplicationModel>> applyToGroup(
    String groupId,
  ) async {
    return _client.post<GroupApplicationModel>(
      ApiUrlConstants.groupApply(groupId),
      needAuth: true,
      transformer: (json) => GroupMapper.toApplicationModel(
        GroupApplicationData.fromJson(json as Map<String, dynamic>),
      ),
    );
  }

  @override
  Future<Either<RemoteException, void>> createGroup(
    CreateGroupFormModel form,
  ) async {
    final json = CreateGroupFormMapper.toDto(form).toJson();
    return await _client.post(
      ApiUrlConstants.groups,
      body: json,
      needAuth: true,
    );
  }

  //TODO: Не релизлвано на бэке
  @override
  Future<Either<RemoteException, void>> addGroupToFavorites(
    String groupId,
  ) async {
    return _client.post<void>(
      ApiUrlConstants.groupFavorite(groupId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, void>> removeGroupFromFavorites(
    String groupId,
  ) async {
    return _client.delete<void>(
      ApiUrlConstants.groupFavorite(groupId),
      needAuth: true,
      transformer: (_) {},
    );
  }
}
