import 'package:roomate/data/dto/apartaments/apartament_dto.dart';
import 'package:roomate/domain/models/ad_form/ad_form_options_model.dart';
import 'package:roomate/domain/models/apartaments/apartament_filter.dart';
import 'package:roomate/domain/models/filter/filter_model.dart';

abstract interface class ApartamentsDataSource {
  Future<List<ApartamentDto>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilterTags();
  Future<AdFormOptionsModel> fetchAdFormOptions();
}
