import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class GroupsRemoteDataSource implements GroupsDataSource {
  GroupsRemoteDataSource(this._client);

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<GroupListItemModel>>> fetchGroups({WhoSearchFilterModel? filter}) async {
    final result = await _client.get<GroupsResponseData>(
      ApiUrlConstants.groups,
      needAuth: true,

      query: GroupFilterMapper.toData(filter ?? const WhoSearchFilterModel()).toJson(),
      transformer: (json) => GroupsResponseData.fromJson(json as Map<String, dynamic>),
    );
    return result.fold(
      Left.new,
      (data) =>
          Right(data.items.map((item) => GroupMapper.toListItemModel(item, baseUrl: _client.publicBaseUrl)).toList()),
    );
  }

  @override
  Future<Either<RemoteException, GroupDetailModel>> fetchGroupById(String groupId) async {
    return _client.get<GroupDetailModel>(
      needAuth: true,
      ApiUrlConstants.group(groupId),
      transformer: (json) => GroupMapper.toDetailModel(
        GroupDetailData.fromJson(json as Map<String, dynamic>),
        baseUrl: _client.publicBaseUrl,
      ),
    );
  }

  @override
  Future<Either<RemoteException, CreateGroupFormOptionsModel>> fetchTags() async {
    final result = await _client.get<CreateGroupFormOptionsData>(
      ApiUrlConstants.groupFormOptions,
      transformer: (json) => CreateGroupFormOptionsData.fromJson(json as Map<String, dynamic>),
    );
    return result.fold(Left.new, (data) => Right(data.toModel()));
  }

  @override
  Future<Either<RemoteException, ParticipantProfileModel>> fetchGroupParticipantById(String participantId) async {
    return _client.get<ParticipantProfileModel>(
      ApiUrlConstants.groupParticipant(participantId),
      transformer: (json) =>
          GroupMapper.toParticipantProfileModel(ParticipantProfileData.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<Either<RemoteException, GroupApplicationModel>> applyToGroup(String groupId) async {
    return _client.post<GroupApplicationModel>(
      ApiUrlConstants.groupApply(groupId),
      needAuth: true,
      transformer: (json) =>
          GroupMapper.toApplicationModel(GroupApplicationData.fromJson(json as Map<String, dynamic>)),
    );
  }

  @override
  Future<Either<RemoteException, List<IncomingGroupApplicationModel>>> fetchIncomingGroupApplications({
    String? status,
  }) async {
    final result = await _client.get<List<IncomingGroupApplicationData>>(
      ApiUrlConstants.myGroupApplications,
      needAuth: true,
      query: status == null ? null : {'status': status},
      transformer: (json) =>
          _parseList(json, itemParser: (item) => IncomingGroupApplicationData.fromJson(item as Map<String, dynamic>)),
    );

    return result.fold(
      (error) => Left(error),
      (items) => Right(
        items.map((item) => GroupMapper.toIncomingApplicationModel(item, baseUrl: _client.publicBaseUrl)).toList(),
      ),
    );
  }

  @override
  Future<Either<RemoteException, IncomingGroupApplicationDetailModel>> fetchIncomingGroupApplicationDetails(
    String applicationId,
  ) async {
    final result = await _client.get<IncomingGroupApplicationData>(
      ApiUrlConstants.myGroupApplication(applicationId),
      needAuth: true,
      transformer: (json) => _parseApplication(json),
    );

    return result.fold(
      (error) => Left(error),
      (item) => Right(GroupMapper.toIncomingApplicationDetailModel(item, baseUrl: _client.publicBaseUrl)),
    );
  }

  @override
  Future<Either<RemoteException, void>> rejectIncomingGroupApplication(String applicationId) async {
    return _client.post<void>(
      ApiUrlConstants.myGroupApplicationReject(applicationId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, void>> acceptIncomingGroupApplication(String applicationId) async {
    return _client.post<void>(
      ApiUrlConstants.myGroupApplicationAccept(applicationId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, void>> createGroup(CreateGroupFormModel form) async {
    final json = CreateGroupFormMapper.toDto(form).toJson();
    return await _client.post(ApiUrlConstants.groups, body: json, needAuth: true);
  }

  //TODO: Не релизлвано на бэке
  @override
  Future<Either<RemoteException, void>> addGroupToFavorites(String groupId) async {
    return _client.post<void>(ApiUrlConstants.groupFavorite(groupId), needAuth: true, transformer: (_) {});
  }

  @override
  Future<Either<RemoteException, void>> removeGroupFromFavorites(String groupId) async {
    return _client.delete<void>(ApiUrlConstants.groupFavorite(groupId), needAuth: true, transformer: (_) {});
  }

  List<T> _parseList<T>(dynamic json, {required T Function(dynamic item) itemParser}) {
    final rawItems = switch (json) {
      List<dynamic> items => items,
      Map<String, dynamic> map when map['items'] is List<dynamic> => map['items'] as List<dynamic>,
      Map<String, dynamic> map when map['applications'] is List<dynamic> => map['applications'] as List<dynamic>,
      _ => const <dynamic>[],
    };

    return rawItems.map(itemParser).toList();
  }

  IncomingGroupApplicationData _parseApplication(dynamic json) {
    if (json is Map<String, dynamic>) {
      if (json['application'] is Map<String, dynamic>) {
        return IncomingGroupApplicationData.fromJson(json['application'] as Map<String, dynamic>);
      }

      return IncomingGroupApplicationData.fromJson(json);
    }

    return const IncomingGroupApplicationData();
  }
}
