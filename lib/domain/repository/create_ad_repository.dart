import 'package:roomate/domain/models/create_ad_request.dart';
import 'package:roomate/domain/models/tag_model.dart';

abstract class ICreateAdRepository {
  Map<String, List<TagGroupModel>> getAllTags();
  List<TagGroupModel> getRentTypeTags();
  TagGroupModel getPremisesTypeTags();
  TagGroupModel getPropertyTypeTags();
  List<TagGroupModel> getPropertiesApartmentTags();
  List<TagGroupModel> getFeatures();
  List<TagGroupModel> getThings();
  List<TagGroupModel> getDealTermsTags();
  TagGroupModel getContactInfoTags();

  void createAd(CreateAdRequest request);
}
