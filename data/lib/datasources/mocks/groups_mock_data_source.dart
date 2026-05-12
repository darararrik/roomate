import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

class GroupsMockDataSource implements GroupsDataSource {
  static const _genders = [
    OptionModel(id: 1, title: 'Мужской'),
    OptionModel(id: 2, title: 'Женский'),
    OptionModel(id: 3, title: 'Любой'),
  ];

  static const _communication = [
    OptionModel(id: 10, title: 'Интроверт'),
    OptionModel(id: 11, title: 'Амбиверт'),
    OptionModel(id: 12, title: 'Экстраверт'),
  ];

  static const _sleep = [
    OptionModel(id: 20, title: 'Жаворонок'),
    OptionModel(id: 21, title: 'Сова'),
    OptionModel(id: 22, title: 'Гибкий'),
  ];

  static const _badHabits = [
    OptionModel(id: 30, title: 'Нет'),
    OptionModel(id: 31, title: 'Редко'),
    OptionModel(id: 32, title: 'Есть'),
  ];

  static const _guests = [
    OptionModel(id: 40, title: 'Никогда'),
    OptionModel(id: 41, title: 'Редко'),
    OptionModel(id: 42, title: 'Часто'),
  ];

  static const _noise = [
    OptionModel(id: 50, title: 'Тихо'),
    OptionModel(id: 51, title: 'Умеренно'),
    OptionModel(id: 52, title: 'Шумно'),
  ];

  static const _cleaning = [
    OptionModel(id: 60, title: 'Каждый день'),
    OptionModel(id: 61, title: 'По графику'),
    OptionModel(id: 62, title: 'По настроению'),
  ];

  static const _pets = [
    OptionModel(id: 70, title: 'Нет'),
    OptionModel(id: 71, title: 'Есть'),
  ];

  static const _petsAttitude = [
    OptionModel(id: 80, title: 'Положительно'),
    OptionModel(id: 81, title: 'Нейтрально'),
    OptionModel(id: 82, title: 'Отрицательно'),
  ];

  static const _propertyType = [
    OptionModel(id: 90, title: 'Квартира'),
    OptionModel(id: 91, title: 'Комната'),
    OptionModel(id: 92, title: 'Дом'),
  ];

  static const _roomsCount = [
    OptionModel(id: 100, title: '1'),
    OptionModel(id: 101, title: '2'),
    OptionModel(id: 102, title: '3'),
    OptionModel(id: 103, title: '4+'),
  ];

  static const _furniture = [
    OptionModel(id: 110, title: 'Есть'),
    OptionModel(id: 111, title: 'Частично'),
    OptionModel(id: 112, title: 'Нет'),
  ];

  static const _amenities = [
    OptionModel(id: 120, title: 'Интернет'),
    OptionModel(id: 121, title: 'Кондиционер'),
    OptionModel(id: 122, title: 'Парковка'),
  ];

  static const _bathroom = [
    OptionModel(id: 130, title: 'Совмещенный'),
    OptionModel(id: 131, title: 'Раздельный'),
  ];

  static const _appliances = [
    OptionModel(id: 140, title: 'Холодильник'),
    OptionModel(id: 141, title: 'Стиральная машина'),
    OptionModel(id: 142, title: 'Плита'),
  ];

  static const _currency = [
    OptionModel(id: 150, title: 'Рубли'),
    OptionModel(id: 151, title: 'USD'),
    OptionModel(id: 152, title: 'EUR'),
  ];

  static const _rentDuration = [
    OptionModel(id: 180, title: 'От 6 месяцев'),
    OptionModel(id: 181, title: 'От года'),
    OptionModel(id: 182, title: 'На длительный срок'),
  ];

  static const _utilitiesPayment = [
    OptionModel(id: 190, title: 'Включены в стоимость'),
    OptionModel(id: 191, title: 'Оплачиваются отдельно'),
  ];

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
  Future<Either<RemoteException, CreateGroupFormOptionsModel>>
  fetchCreateGroupFormOptions() async {
    await Future.delayed(const Duration(milliseconds: 250));
    return const Right(
      CreateGroupFormOptionsModel(
        lookingForGender: _genders,
        communication: _communication,
        sleep: _sleep,
        badHabits: _badHabits,
        guests: _guests,
        noiseLevel: _noise,
        cleaning: _cleaning,
        pets: _pets,
        petsAttitude: _petsAttitude,
        propertyType: _propertyType,
        roomsCount: _roomsCount,
        furniture: _furniture,
        amenities: _amenities,
        bathroom: _bathroom,
        appliances: _appliances,
        currency: _currency,
        rentDuration: _rentDuration,
        utilitiesPayment: _utilitiesPayment,
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

  @override
  Future<Either<RemoteException, void>> createGroup(
    CreateGroupFormModel form,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const Right(null);
  }
}
