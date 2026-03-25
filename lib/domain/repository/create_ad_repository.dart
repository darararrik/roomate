import 'package:roomate/domain/models/tag_model.dart';

abstract class ICreateAdRepository {
  List<TagGroupModel> getRentTypeTags();
  TagGroupModel getPremisesTypeTags();
  TagGroupModel getPropertyTypeTags();
  List<TagGroupModel> getPropertiesApartmentTags();
  List<TagGroupModel> getFeatures();
  List<TagGroupModel> getThings();
  List<TagGroupModel> getDealTermsTags();
  TagGroupModel getContactInfoTags();
}
