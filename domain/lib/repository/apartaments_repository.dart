import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class IApartamentsRepository {
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilters();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormModel request);
}
