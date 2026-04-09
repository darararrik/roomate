import 'package:domain/domain.dart';

abstract interface class IApartamentsRepository {
  Future<List<ApartamentModel>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilters();
  Future<AdFormOptionsModel> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormModel request);
}
