import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@BackendOnly(
  'Temporary mock datasource that emulates apartment backend responses.',
)
class ApartamentsMockDataSource implements ApartamentsDataSource {
  @override
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchApartaments(ApartamentFilterModel filter) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final allApartments = [
      ...ApartmentsMockJson.fetchApartments,
      ...MockStorage.createAds,
    ].map((json) => ApartamentData.fromJson(json)).toList();

    final filteredApartments = allApartments
        .where((apt) {
          /// город
          if (filter.cityId != 0 && apt.cityId != filter.cityId) {
            return false;
          }

          /// категория
          if (filter.goalId != 0) {
            final categoryTitle = _findTitle(
              TagsMockData.rentGoal,
              filter.goalId,
            );

            if (categoryTitle == "Аренда" && apt.dealGoal != "rent") {
              return false;
            }

            if (categoryTitle == "Обмен" && apt.dealGoal != "exchange") {
              return false;
            }
          }

          /// комнаты
          if (filter.roomsCountIds.isNotEmpty) {
            final selectedRoomsTitles = filter.roomsCountIds
                .map((id) => _findTitle(TagsMockData.roomsCount, id))
                .whereType<String>()
                .toList();

            if (!selectedRoomsTitles.contains(apt.roomsCount)) {
              return false;
            }
          }

          /// цена
          final price =
              int.tryParse((apt.price ?? '').replaceAll(' ', '')) ?? 0;

          if (filter.minPrice != null && price < filter.minPrice!) {
            return false;
          }

          if (filter.maxPrice != null && price > filter.maxPrice!) {
            return false;
          }

          return true;
        })
        .map(ApartamentMapper.toPreviewModel)
        .toList();

    return Right(filteredApartments);
  }

  String? _findTitle(List<Map<String, dynamic>> list, int? id) {
    if (id == null) return null;

    for (final item in list) {
      if (item["id"] == id) {
        return item["title"] as String?;
      }
    }

    return null;
  }

  @override
  Future<Either<RemoteException, FilterModel>> fetchFilterTags() async {
    await Future.delayed(const Duration(milliseconds: 100));
    final json = ApartmentFiltersMockJson.fetchFilterTags;
    return Right(FilterData.fromJson(json).toModel());
  }

  @override
  Future<Either<RemoteException, AdFormOptionsModel>>
  fetchAdFormOptions() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final json = CreateAdMockJson.fetchTagsResponse;
    return Right(AdFormOptionsData.fromJson(json).toModel());
  }

  @override
  Future<Either<RemoteException, void>> createAd(
    CreateAdFormRequestData request,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final nextId =
        [
          ...ApartmentsMockJson.fetchApartments.map(
            (item) => int.tryParse('${item['id']}') ?? 0,
          ),
          ...MockStorage.createAds.map(
            (item) => int.tryParse('${item['id']}') ?? 0,
          ),
        ].fold<int>(
          0,
          (maxId, currentId) => currentId > maxId ? currentId : maxId,
        ) +
        1;

    final ownerName = _resolveOwnerName();
    final apartment = CreateAdFormMapper.toApartamentDto(
      request,
      id: nextId.toString(),
      ownerName: ownerName,
    );

    MockStorage.createAds.insert(0, apartment.toJson());
    return const Right(null);
  }

  String _resolveOwnerName() {
    final profile = MockStorage.userProfile;
    if (profile == null) {
      return 'Пользователь';
    }

    final firstName = (profile['first_name'] as String? ?? '').trim();
    final lastName = (profile['last_name'] as String? ?? '').trim();
    final fullName = '$firstName $lastName'.trim();

    if (fullName.isNotEmpty) {
      return fullName;
    }

    final legacyName = (profile['name'] as String? ?? '').trim();
    if (legacyName.isNotEmpty) {
      return legacyName;
    }

    return 'Пользователь';
  }

  @override
  Future<Either<RemoteException, ApartamentModel>> fetchApartamentById(
    String id,
  ) {
    final allApartments = [
      ...ApartmentsMockJson.fetchApartments,
      ...MockStorage.createAds,
    ];

    for (final json in allApartments) {
      if (json['id'] == id) {
        return Future.value(
          Right(ApartamentMapper.toModel(ApartamentData.fromJson(json))),
        );
      }
    }

    return Future.value(
      Left(
        RemoteException(
          kind: RemoteExceptionKind.serverDefined,
          rootException: Exception('Apartment not found'),
        ),
      ),
    );
  }
}
