import 'package:dartz/dartz.dart';
import 'package:data/lib.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class ApartamentsDataSource {
  Future<List<ApartamentDto>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilterTags();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormRequestDto request);
}
