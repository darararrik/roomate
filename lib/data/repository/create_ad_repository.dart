import 'package:roomate/data/datasources/static/create_ad_static_datasource.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';

class CreateAdRepository implements ICreateAdRepository {
  @override
  List<TagGroupModel> getRentTypeTags() => CreateAdStaticDataSource.rentType;

  @override
  List<TagGroupModel> getRoomTypeTags() => CreateAdStaticDataSource.roomType;

  @override
  List<TagGroupModel> getPropertyTypeTags() => CreateAdStaticDataSource.propertyType;

  @override
  List<TagGroupModel> getFeaturesFirstTags() => CreateAdStaticDataSource.featuresFirst;

  @override
  List<TagGroupModel> getFeaturesSecondTags() => CreateAdStaticDataSource.featuresSecond;

  @override
  List<TagGroupModel> getDealTermsTags() => CreateAdStaticDataSource.dealTerms;

  @override
  List<TagGroupModel> getContactInfoTags() => CreateAdStaticDataSource.contactInfo;

  @override
  List<TagGroupModel> getPropertiesApartmentTags() => CreateAdStaticDataSource.propertiesApartment;
}
