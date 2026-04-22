import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

import 'package:data/data.dart';

class ApartamentsRemoteDataSource implements ApartamentsDataSource {
  ApartamentsRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<List<ApartamentData>> fetchApartaments(ApartamentFilter filter) {
    // TODO: implement fetchApartaments
    throw UnimplementedError();
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
  Future<FilterModel> fetchFilterTags() {
    // TODO: implement fetchFilterTags
    throw UnimplementedError();
  }

  @override
  Future<void> createAd(CreateAdFormRequestData request) async {
    try {
      final res = await _client.post(
        ApiUrlConstants.createAd,
        body: request.toJson(),
        needAuth: true,
      );
    } catch (e) {
      rethrow;
    }
  }
}
