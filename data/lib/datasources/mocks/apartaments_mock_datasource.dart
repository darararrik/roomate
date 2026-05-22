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
          if (filter.cityFiasId.isNotEmpty) {
            final normalizedFiasId = filter.cityFiasId.trim().toLowerCase();
            final address = (apt.address ?? '').trim().toLowerCase();

            if (normalizedFiasId == 'omsk' && !address.contains('омск')) {
              return false;
            }
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

  @override
  Future<Either<RemoteException, AdApplicationSubmitModel>> applyToAd(
    String adId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 200));

    return Right(
      AdApplicationMapper.toSubmitModel(
        AdApplicationSubmitData(
          id: 'ad-application-$adId',
          adId: adId,
          status: 'pending',
          createdAt: DateTime.now().toIso8601String(),
        ),
      ),
    );
  }

  @override
  Future<Either<RemoteException, List<MyAdModel>>> fetchMyAds() async {
    await Future.delayed(const Duration(milliseconds: 200));

    final rawItems = [
      ...MockStorage.createAds,
      ...ApartmentsMockJson.fetchApartments.take(3),
    ];

    final statuses = ['active', 'on_moderation', 'archived'];
    final items = rawItems.asMap().entries.map((entry) {
      final dto = MyAdData.fromJson({
        ...entry.value,
        'status': statuses[entry.key % statuses.length],
      });
      return OwnerAdsMapper.toMyAdModel(dto);
    }).toList();

    return Right(items);
  }

  @override
  Future<Either<RemoteException, List<AdApplicationModel>>>
  fetchIncomingAdApplications({String? status}) async {
    await Future.delayed(const Duration(milliseconds: 200));

    final items = _mockApplications()
        .where((item) => status == null || item.status == status)
        .map(OwnerAdsMapper.toApplicationModel)
        .toList();

    return Right(items);
  }

  @override
  Future<Either<RemoteException, AdApplicationDetailModel>>
  fetchIncomingAdApplicationDetails(String applicationId) async {
    await Future.delayed(const Duration(milliseconds: 200));

    final item = _mockApplications().firstWhere(
      (application) => application.id == applicationId,
      orElse: () => const AdApplicationData(),
    );

    return Right(OwnerAdsMapper.toApplicationDetailModel(item));
  }

  @override
  Future<Either<RemoteException, void>> rejectIncomingAdApplication(
    String applicationId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return const Right(null);
  }

  @override
  Future<Either<RemoteException, void>> acceptIncomingAdApplication(
    String applicationId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 200));
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

  List<AdApplicationData> _mockApplications() {
    final apartments = [
      ...MockStorage.createAds,
      ...ApartmentsMockJson.fetchApartments,
    ];

    final adJson = apartments.isNotEmpty
        ? apartments.first
        : <String, dynamic>{};

    return [
      AdApplicationData.fromJson({
        'id': 'app-1',
        'status': 'pending',
        'created_at': DateTime.now().toIso8601String(),
        'updated_at': DateTime.now().toIso8601String(),
        'ad': {
          'id': '${adJson['id'] ?? '1'}',
          'title': adJson['title'] ?? 'Аренда квартиры',
          'description': adJson['description'] ?? '',
          'image_urls': adJson['image_urls'] ?? const <String>[],
          'price': adJson['price'] ?? '10 000',
          'rooms_count': adJson['rooms_count'] ?? '1 комн.',
          'area': adJson['area'] ?? '39м²',
          'floor': adJson['floor'] ?? 3,
          'total_floor': adJson['total_floor'] ?? 17,
          'address': adJson['address'] ?? 'Омск, улица Красный путь, 101к1',
          'status': 'active',
        },
        'tenant': {
          'id': 'participant-1',
          'first_name': 'Марина',
          'last_name': 'Петрова',
          'age': 24,
          'gender': 'female',
          'city': 'Омск',
          'photo':
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=160&q=80',
          'phone': '+79999999999',
        },
        'tenant_profile': {
          'about': 'Работаю удаленно, ценю порядок и спокойную атмосферу.',
          'preferences': {
            'communication': [2],
            'sleep': [11],
            'employment': [20],
            'bad_habits': [30],
            'guests': [41],
            'noise_level': [50],
            'cleaning': [60],
            'pets': [70],
            'pets_attitude': [80],
          },
        },
      }),
    ];
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
