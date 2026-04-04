import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/domain/models/apartaments/apartament_filter.dart';
import 'package:roomate/domain/models/ad_form/ad_form_options_model.dart';
import 'package:roomate/domain/models/filter/filter_model.dart';

abstract interface class IApartamentsRepository {
  Future<List<ApartamentModel>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilters();
  Future<AdFormOptionsModel> fetchAdFormOptions();
}
