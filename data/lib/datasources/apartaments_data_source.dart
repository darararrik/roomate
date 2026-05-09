import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import 'package:data/data.dart';

abstract interface class ApartamentsDataSource {
  Future<Either<RemoteException, List<ApartamentModel>>> fetchApartaments(
    ApartamentFilterModel filter,
  );
  Future<Either<RemoteException, FilterModel>> fetchFilterTags();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<Either<RemoteException, void>> createAd(
    CreateAdFormRequestData request,
  );
}
