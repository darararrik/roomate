import '../models/apartaments/apartament_model.dart';
import '../models/apartaments/apartament_filter.dart';
import '../models/ad_form/ad_form_options_model.dart';
import '../models/filter/filter_model.dart';

abstract interface class IApartamentsRepository {
  Future<List<ApartamentModel>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilters();
  Future<AdFormOptionsModel> fetchAdFormOptions();
}
