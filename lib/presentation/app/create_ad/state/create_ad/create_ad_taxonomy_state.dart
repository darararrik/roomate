import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/models/tag_model.dart';

part 'create_ad_taxonomy_state.freezed.dart';

@freezed
sealed class CreateAdTaxonomyState with _$CreateAdTaxonomyState {
  const factory CreateAdTaxonomyState({
    required List<TagGroupModel> rentTypeGroups,
    required TagGroupModel premisesTypeGroup,
    required TagGroupModel propertyTypeGroup,
    required List<TagGroupModel> apartmentPropertiesGroups,
    required List<TagGroupModel> featuresGroups,
    required List<TagGroupModel> thingsGroups,
    required List<TagGroupModel> dealTermsGroups,
    required TagGroupModel contactInfoGroup,
  }) = _CreateAdTaxonomyState;
}
