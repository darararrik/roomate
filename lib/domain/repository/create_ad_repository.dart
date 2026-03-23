import 'package:roomate/domain/models/tag_model.dart';

abstract class ICreateAdRepository {
  List<TagGroupModel> getRentTypeTags();
  List<TagGroupModel> getRoomTypeTags();
  List<TagGroupModel> getPropertyTypeTags();
  List<TagGroupModel> getPropertiesApartmentTags();
  List<TagGroupModel> getFeaturesFirstTags();
  List<TagGroupModel> getFeaturesSecondTags();
  List<TagGroupModel> getDealTermsTags();
  List<TagGroupModel> getContactInfoTags();
}
