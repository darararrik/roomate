import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

abstract interface class IApartamentsRepository {
  Future<List<ApartamentModel>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilters();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormModel request);
}
