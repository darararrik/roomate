import 'package:data/lib.dart';
import 'package:domain/domain.dart';

abstract interface class ApartamentsDataSource {
  Future<List<ApartamentDto>> fetchApartaments(ApartamentFilter filter);
  Future<FilterModel> fetchFilterTags();
  Future<AdFormOptionsModel> fetchAdFormOptions();
  Future<void> createAd(CreateAdFormRequestDto request);
}
