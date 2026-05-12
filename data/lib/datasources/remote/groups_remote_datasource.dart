import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsRemoteDataSource implements GroupsDataSource {
  GroupsRemoteDataSource(this._client);

  final ApiClient _client;

  OptionModel _optionFromJson(Map<String, dynamic> json) {
    return OptionModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      isDisabled: json['is_disabled'] as bool? ?? false,
    );
  }

  List<OptionModel> _options(dynamic json) {
    if (json is! List) {
      return const [];
    }

    return json.whereType<Map<String, dynamic>>().map(_optionFromJson).toList();
  }

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
  Future<Either<RemoteException, CreateGroupFormOptionsModel>>
  fetchCreateGroupFormOptions() async {
    return _client.get<CreateGroupFormOptionsModel>(
      ApiUrlConstants.groupFormOptions,
      transformer: (json) {
        final map = json as Map<String, dynamic>;
        return CreateGroupFormOptionsModel(
          lookingForGender: _options(map['looking_for_gender']),
          communication: _options(map['communication']),
          sleep: _options(map['sleep']),
          employment: _options(map['employment']),
          badHabits: _options(map['bad_habits']),
          guests: _options(map['guests']),
          noiseLevel: _options(map['noise_level']),
          cleaning: _options(map['cleaning']),
          pets: _options(map['pets']),
          petsAttitude: _options(map['pets_attitude']),
          propertyType: _options(map['property_type']),
          roomsCount: _options(map['rooms_count']),
          furniture: _options(map['furniture']),
          amenities: _options(map['amenities']),
          bathroom: _options(map['bathroom']),
          appliances: _options(map['appliances']),
          currency: _options(map['currency']),
          rentDuration: _options(map['rent_duration']),
          utilitiesPayment: _options(map['utilities_payment']),
        );
      },
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

  @override
  Future<Either<RemoteException, void>> createGroup(
    CreateGroupFormModel form,
  ) async {
    return _client.post<void>(
      ApiUrlConstants.groups,
      body: form.toJson(),
      needAuth: true,
      transformer: (_) {},
    );
  }
}
