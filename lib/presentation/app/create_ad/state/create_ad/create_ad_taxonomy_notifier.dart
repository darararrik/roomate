import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/domain/models/create_ad_tag_sections.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_state.dart';
import 'package:roomate/presentation/di/providers.dart';

part 'create_ad_taxonomy_notifier.g.dart';

@riverpod
class CreateAdTaxonomy extends _$CreateAdTaxonomy {
  @override
  CreateAdTaxonomyState build() {
    final repository = ref.read(createAdRepositoryProvider);
    final allTags = repository.getAllTags();

    TagGroupModel firstOrEmpty(String key) {
      final list = allTags[key] ?? const <TagGroupModel>[];
      return list.isNotEmpty ? list.first : const TagGroupModel();
    }

    return CreateAdTaxonomyState(
      rentTypeGroups: allTags[CreateAdTagSections.rentType] ?? const <TagGroupModel>[],
      premisesTypeGroup: firstOrEmpty(CreateAdTagSections.premisesType),
      propertyTypeGroup: firstOrEmpty(CreateAdTagSections.propertyType),
      apartmentPropertiesGroups:
          allTags[CreateAdTagSections.apartmentProperties] ?? const <TagGroupModel>[],
      featuresGroups: allTags[CreateAdTagSections.features] ?? const <TagGroupModel>[],
      thingsGroups: allTags[CreateAdTagSections.things] ?? const <TagGroupModel>[],
      dealTermsGroups: allTags[CreateAdTagSections.dealTerms] ?? const <TagGroupModel>[],
      contactInfoGroup: firstOrEmpty(CreateAdTagSections.contactInfo),
    );
  }
}
