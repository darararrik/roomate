import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class IApartamentsRepository {
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchApartaments(ApartamentFilterModel filter);
  Future<Either<RemoteException, ApartamentModel>> fetchApartamentById(
    String id,
  );
  Future<Either<RemoteException, FilterModel>> fetchFilters();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<Either<RemoteException, void>> createAd(CreateAdFormModel request);
}
