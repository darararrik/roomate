import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/entity/apartaments_response/apartaments_response_data.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

class ApartamentsRemoteDataSource implements ApartamentsDataSource {
  ApartamentsRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchApartaments(ApartamentFilterModel filter) async {
    final result = await _client.get<ApartamentsResponseData>(
      ApiUrlConstants.ads,
      query: ApartamentFilterMapper.toData(filter).toJson(),
      transformer: (json) => ApartamentsResponseData.fromJson(json),
    );
    return result.fold(
      (result) => Left(result),
      (result) =>
          Right(result.items.map(ApartamentMapper.toPreviewModel).toList()),
    );
  }

  @override
  Future<Either<RemoteException, ApartamentModel>> fetchApartamentById(
    String id,
  ) async {
    final result = await _client.get<ApartamentData>(
      ApiUrlConstants.adsId(id),
      transformer: (json) => ApartamentData.fromJson(json),
    );
    return result.fold(
      (result) => Left(result),
      (result) => Right(ApartamentMapper.toModel(result)),
    );
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
