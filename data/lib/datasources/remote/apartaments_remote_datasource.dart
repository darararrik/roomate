import 'package:dartz/dartz.dart';
import 'package:data/lib.dart';
import 'package:domain/lib.dart';
import 'package:shared/exception/remote_exception.dart';

class ApartamentsRemoteDataSource implements ApartamentsDataSource {
  ApartamentsRemoteDataSource(ApiClient client) : _client = client;
  final ApiClient _client;

  @override
  Future<List<ApartamentDto>> fetchApartaments(ApartamentFilter filter) {
    // TODO: implement fetchApartaments
    throw UnimplementedError();
  }

  @override
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions() async {
    try {
      final result = await _client.get(
        ApiUrlConstants.adFormOptions,
        transformer: (json) => AdFormOptionsDto.fromJson(json),
      );
      return Right(AdFormMapper.toModel(result));
    } catch (e) {
      return Left(RemoteException(kind: RemoteExceptionKind.unknown, rootException: e.toString()));
    }
  }

  @override
  Future<FilterModel> fetchFilterTags() {
    // TODO: implement fetchFilterTags
    throw UnimplementedError();
  }

  @override
  Future<void> createAd(CreateAdFormRequestDto request) async {
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
