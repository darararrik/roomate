import 'package:roomate/data/datasources/remote/mocks/create_ad_mock_datasource.dart';
import 'package:roomate/domain/models/create_ad_request.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/domain/repository/create_ad_repository.dart';

class CreateAdRepository implements ICreateAdRepository {
  CreateAdRepository({required CreateAdMockDataSource mockDataSource})
    : _mockDataSource = mockDataSource;

  final CreateAdMockDataSource _mockDataSource;

  @override
  Map<String, List<TagGroupModel>> getAllTags() =>
      _mockDataSource.fetchAllTags();

  @override
  List<TagGroupModel> getRentTypeTags() => _mockDataSource.fetchRentTypeTags();

  @override
  TagGroupModel getPremisesTypeTags() =>
      _mockDataSource.fetchPremisesTypeTags();

  @override
  TagGroupModel getPropertyTypeTags() =>
      _mockDataSource.fetchPropertyTypeTags();

  @override
  List<TagGroupModel> getFeatures() => _mockDataSource.fetchFeaturesTags();

  @override
  List<TagGroupModel> getThings() => _mockDataSource.fetchThingsTags();

  @override
  List<TagGroupModel> getDealTermsTags() =>
      _mockDataSource.fetchDealTermsTags();

  @override
  TagGroupModel getContactInfoTags() => _mockDataSource.fetchContactInfoTags();

  @override
  List<TagGroupModel> getPropertiesApartmentTags() =>
      _mockDataSource.fetchPropertiesApartmentTags();

  @override
  void createAd(CreateAdRequest request) => _mockDataSource.createAd(request);
}
