import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class ApartamentsRemoteDataSource implements ApartamentsDataSource {
  ApartamentsRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(
    ApartamentFilterModel filter,
  ) async {
    final result = await _client.get<List<ApartamentModel>>(
      ApiUrlConstants.ads,
      query: ApartamentFilterMapper.toData(filter).toJson(),
      transformer: (json) => (json as List<dynamic>)
          .map((item) => ApartamentData.fromJson(item as Map<String, dynamic>))
          .map((dto) => ApartamentMapper.toModel(dto))
          .toList(),
    );

    return result;
  }

  @override
  Future<Either<RemoteException, AdFormOptionsModel>>
  fetchAdFormOptions() async {
    final result = await _client.get(
      ApiUrlConstants.adFormOptions,
      transformer: (json) => AdFormOptionsData.fromJson(json),
    );
    return result.fold(
      (error) => Left(error),
      (data) => Right(AdFormMapper.toModel(data)),
    );
  }

  @override
  Future<Either<RemoteException, FilterModel>> fetchFilterTags() async {
    final result = await _client.get(
      ApiUrlConstants.filters,
      transformer: (json) => FilterData.fromJson(json),
      needAuth: true,
    );
    return result.fold(
      (error) => Left(error),
      (data) => Right(FilterMapper.toModel(data)),
    );
  }

  @override
  Future<Either<RemoteException, void>> createAd(
    CreateAdFormRequestData request,
  ) async {
    final result = await _client.post<void>(
      ApiUrlConstants.ads,
      body: request.toJson(),
      needAuth: true,
      transformer: (_) {},
    );
    return result;
  }
}
