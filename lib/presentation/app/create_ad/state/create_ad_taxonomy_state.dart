import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/models/tag_model.dart';

part 'create_ad_taxonomy_state.freezed.dart';

@freezed
sealed class CreateAdTaxonomyState with _$CreateAdTaxonomyState {
  const factory CreateAdTaxonomyState({
    @Default({}) Map<String, TagGroupModel> allGroups,
  }) = _CreateAdTaxonomyState;
}
