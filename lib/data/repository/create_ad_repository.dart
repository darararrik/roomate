import 'package:roomate/data/datasources/static/create_ad_static_datasource.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';

class CreateAdRepository implements ICreateAdRepository {
  @override
  List<TagGroupModel> getRentTypeTags() => CreateAdStaticDataSource.rentType;

  @override
  TagGroupModel getPremisesTypeTags() => CreateAdStaticDataSource.premisesType;

  @override
  TagGroupModel getPropertyTypeTags() => CreateAdStaticDataSource.propertyType;

  @override
  List<TagGroupModel> getFeatures() => CreateAdStaticDataSource.featuresFirst;

  @override
  List<TagGroupModel> getThings() => CreateAdStaticDataSource.featuresSecond;

  @override
  List<TagGroupModel> getDealTermsTags() => CreateAdStaticDataSource.dealTerms;

  @override
  TagGroupModel getContactInfoTags() => CreateAdStaticDataSource.contactInfo;

  @override
  List<TagGroupModel> getPropertiesApartmentTags() => CreateAdStaticDataSource.propertiesApartment;
}
