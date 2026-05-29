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
          Right(
            result.items
                .map(
                  (item) => ApartamentMapper.toPreviewModel(
                    item,
                    baseUrl: _client.publicBaseUrl,
                  ),
                )
                .toList(),
          ),
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
      (result) => Right(
        ApartamentMapper.toModel(result, baseUrl: _client.publicBaseUrl),
      ),
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

  @override
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchFavoriteApartments() async {
    final result = await _client.get<ApartamentsResponseData>(
      ApiUrlConstants.myFavoriteAds,
      needAuth: true,
      transformer: (json) =>
          ApartamentsResponseData.fromJson(json as Map<String, dynamic>),
    );

    return result.fold(
      (error) => Left(error),
      (data) => Right(
        data.items
            .map(
              (item) => ApartamentMapper.toPreviewModel(
                item,
                baseUrl: _client.publicBaseUrl,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<RemoteException, void>> addApartmentToFavorites(
    String adId,
  ) async {
    return _client.post<void>(
      ApiUrlConstants.adsFavorite(adId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, void>> removeApartmentFromFavorites(
    String adId,
  ) async {
    return _client.delete<void>(
      ApiUrlConstants.adsFavorite(adId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, AdApplicationSubmitModel>> applyToAd(
    String adId,
  ) async {
    final result = await _client.post<AdApplicationSubmitData>(
      ApiUrlConstants.adsApply(adId),
      needAuth: true,
      transformer: (json) =>
          AdApplicationSubmitData.fromJson(json as Map<String, dynamic>),
    );

    return result.fold(
      (error) => Left(error),
      (data) => Right(AdApplicationMapper.toSubmitModel(data)),
    );
  }

  @override
  Future<Either<RemoteException, List<MyAdModel>>> fetchMyAds() async {
    final result = await _client.get<List<MyAdData>>(
      ApiUrlConstants.myAds,
      needAuth: true,
      transformer: (json) => _parseList(
        json,
        itemParser: (item) => MyAdData.fromJson(item as Map<String, dynamic>),
      ),
    );

    return result.fold(
      (error) => Left(error),
      (items) => Right(
        items
            .map(
              (item) => OwnerAdsMapper.toMyAdModel(
                item,
                baseUrl: _client.publicBaseUrl,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<RemoteException, List<AdApplicationModel>>>
  fetchIncomingAdApplications({String? status}) async {
    final result = await _client.get<List<AdApplicationData>>(
      ApiUrlConstants.myAdApplications,
      needAuth: true,
      query: status == null ? null : {'status': status},
      transformer: (json) => _parseList(
        json,
        itemParser: (item) =>
            AdApplicationData.fromJson(item as Map<String, dynamic>),
      ),
    );

    return result.fold(
      (error) => Left(error),
      (items) => Right(
        items
            .map(
              (item) => OwnerAdsMapper.toApplicationModel(
                item,
                baseUrl: _client.publicBaseUrl,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<RemoteException, AdApplicationDetailModel>>
  fetchIncomingAdApplicationDetails(String applicationId) async {
    final result = await _client.get<AdApplicationData>(
      ApiUrlConstants.myAdApplication(applicationId),
      needAuth: true,
      transformer: (json) => _parseApplication(json),
    );

    return result.fold(
      (error) => Left(error),
      (item) => Right(
        OwnerAdsMapper.toApplicationDetailModel(
          item,
          baseUrl: _client.publicBaseUrl,
        ),
      ),
    );
  }

  @override
  Future<Either<RemoteException, void>> rejectIncomingAdApplication(
    String applicationId,
  ) async {
    return _client.post<void>(
      ApiUrlConstants.myAdApplicationReject(applicationId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  @override
  Future<Either<RemoteException, void>> acceptIncomingAdApplication(
    String applicationId,
  ) async {
    return _client.post<void>(
      ApiUrlConstants.myAdApplicationAccept(applicationId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  List<T> _parseList<T>(
    dynamic json, {
    required T Function(dynamic item) itemParser,
  }) {
    final rawItems = switch (json) {
      List<dynamic> items => items,
      Map<String, dynamic> map when map['items'] is List<dynamic> =>
        map['items'] as List<dynamic>,
      Map<String, dynamic> map when map['ads'] is List<dynamic> =>
        map['ads'] as List<dynamic>,
      Map<String, dynamic> map when map['applications'] is List<dynamic> =>
        map['applications'] as List<dynamic>,
      _ => const <dynamic>[],
    };

    return rawItems.map(itemParser).toList();
  }

  AdApplicationData _parseApplication(dynamic json) {
    if (json is Map<String, dynamic>) {
      if (json['application'] is Map<String, dynamic>) {
        return AdApplicationData.fromJson(
          json['application'] as Map<String, dynamic>,
        );
      }

      return AdApplicationData.fromJson(json);
    }

    return const AdApplicationData();
  }
}
