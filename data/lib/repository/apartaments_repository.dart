import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

class ApartamentsRepositoryImpl implements IApartamentsRepository {
  ApartamentsRepositoryImpl(this._dataSource);
  final ApartamentsDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchApartaments(ApartamentFilterModel filter) =>
      _dataSource.fetchApartaments(filter);

  @override
  Future<Either<RemoteException, FilterModel>> fetchFilters() =>
      _dataSource.fetchFilterTags();

  @override
  Future<Either<RemoteException, AdFormOptionsModel>> fetchAdFormOptions() =>
      _dataSource.fetchAdFormOptions();

  @override
  Future<Either<RemoteException, void>> createAd(CreateAdFormModel request) {
    final dto = CreateAdFormMapper.toDto(request);
    return _dataSource.createAd(dto);
  }

  @override
  Future<Either<RemoteException, List<ApartamentPreviewModel>>>
  fetchFavoriteApartments() {
    return _dataSource.fetchFavoriteApartments();
  }

  @override
  Future<Either<RemoteException, void>> addApartmentToFavorites(String adId) {
    return _dataSource.addApartmentToFavorites(adId);
  }

  @override
  Future<Either<RemoteException, void>> removeApartmentFromFavorites(
    String adId,
  ) {
    return _dataSource.removeApartmentFromFavorites(adId);
  }

  @override
  Future<Either<RemoteException, AdApplicationSubmitModel>> applyToAd(
    String adId,
  ) {
    return _dataSource.applyToAd(adId);
  }

  @override
  Future<Either<RemoteException, List<MyAdModel>>> fetchMyAds() {
    return _dataSource.fetchMyAds();
  }

  @override
  Future<Either<RemoteException, List<AdApplicationModel>>>
  fetchIncomingAdApplications({AdApplicationStatus? status}) {
    return _dataSource.fetchIncomingAdApplications(status: status?.value);
  }

  @override
  Future<Either<RemoteException, AdApplicationDetailModel>>
  fetchIncomingAdApplicationDetails(String applicationId) {
    return _dataSource.fetchIncomingAdApplicationDetails(applicationId);
  }

  @override
  Future<Either<RemoteException, void>> rejectIncomingAdApplication(
    String applicationId,
  ) {
    return _dataSource.rejectIncomingAdApplication(applicationId);
  }

  @override
  Future<Either<RemoteException, void>> acceptIncomingAdApplication(
    String applicationId,
  ) {
    return _dataSource.acceptIncomingAdApplication(applicationId);
  }

  @override
  Future<Either<RemoteException, ApartamentModel>> fetchApartamentById(
    String id,
  ) {
    return _dataSource.fetchApartamentById(id);
  }
}
