import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class ApartamentsDataSource {
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(
    ApartamentFilterModel filter,
  );
  Future<FilterModel> fetchFilterTags();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormRequestData request);
}
