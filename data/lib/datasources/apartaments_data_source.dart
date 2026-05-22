import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class ApartamentsDataSource {
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchApartaments(ApartamentFilterModel filter);
  Future<Either<RemoteException, ApartamentModel>> fetchApartamentById(
    String id,
  );
  Future<Either<RemoteException, FilterModel>> fetchFilterTags();
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions();
  Future<Either<RemoteException, void>> createAd(
    CreateAdFormRequestData request,
  );
  Future<Either<RemoteException, AdApplicationSubmitModel>> applyToAd(
    String adId,
  );
  Future<Either<RemoteException, List<MyAdModel>>> fetchMyAds();
  Future<Either<RemoteException, List<AdApplicationModel>>>
  fetchIncomingAdApplications({String? status});
  Future<Either<RemoteException, AdApplicationDetailModel>>
  fetchIncomingAdApplicationDetails(String applicationId);
  Future<Either<RemoteException, void>> rejectIncomingAdApplication(
    String applicationId,
  );
  Future<Either<RemoteException, void>> acceptIncomingAdApplication(
    String applicationId,
  );
}
