import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';
import 'package:shared/mocks/apartament_filters_mock.dart';

class ApartamentsRemoteDataSource implements ApartamentsDataSource {
  ApartamentsRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(
    ApartamentFilter filter,
  ) async {
    final result = await _client.get<List<ApartamentModel>>(
      ApiUrlConstants.ads,
      query: {"limit": 20, "offset": 0},
      transformer: (json) => (json as List<dynamic>)
          .map((item) => ApartamentData.fromJson(item as Map<String, dynamic>))
          .map((dto) => ApartamentMapper.toModel(dto))
          .toList(),
    );

    return result;
  }

  @override
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions() async {
    final result = await _client.get(
      ApiUrlConstants.adFormOptions,
      transformer: (json) => AdFormOptionsData.fromJson(json),
    );
    return result.fold((error) => Left(error), (data) => Right(AdFormMapper.toModel(data)));
  }

  @override
  Future<FilterModel> fetchFilterTags() async {
    //TODO: заставить степу сделать реализацию
    await Future.delayed(const Duration(milliseconds: 1000));
    final json = ApartmentFiltersMockJson.fetchFilterTags;
    return FilterData.fromJson(json).toModel();
  }

  @override
  Future<void> createAd(CreateAdFormRequestData request) async {
    try {
      await _client.post(ApiUrlConstants.ads, body: request.toJson(), needAuth: true);
    } catch (e) {
      rethrow;
    }
  }
}
