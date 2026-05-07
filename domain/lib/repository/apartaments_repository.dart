import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

abstract interface class IApartamentsRepository {
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(
    ApartamentFilterModel filter,
  );
  Future<Either<RemoteException, FilterModel>> fetchFilters();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormModel request);
}
