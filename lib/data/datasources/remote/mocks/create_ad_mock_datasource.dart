import 'dart:convert';

import 'package:roomate/domain/models/create_ad_request.dart';
import 'package:roomate/domain/models/create_ad_tag_sections.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/shared/mocks/create_ad.mock.dart';

class CreateAdMockDataSource {
  Map<String, List<TagGroupModel>> fetchAllTags() {
    return _mapFromJson(CreateAdMockJson.fetchTagsResponse);
  }

  List<TagGroupModel> fetchRentTypeTags() {
    return fetchAllTags()[CreateAdTagSections.rentType] ?? const [];
  }

  TagGroupModel fetchPremisesTypeTags() {
    final groups = fetchAllTags()[CreateAdTagSections.premisesType] ?? const [];
    return groups.isNotEmpty ? groups.first : const TagGroupModel();
  }

  TagGroupModel fetchPropertyTypeTags() {
    final groups = fetchAllTags()[CreateAdTagSections.propertyType] ?? const [];
    return groups.isNotEmpty ? groups.first : const TagGroupModel();
  }

  List<TagGroupModel> fetchPropertiesApartmentTags() {
    return fetchAllTags()[CreateAdTagSections.apartmentProperties] ?? const [];
  }

  List<TagGroupModel> fetchFeaturesTags() {
    return fetchAllTags()[CreateAdTagSections.features] ?? const [];
  }

  List<TagGroupModel> fetchThingsTags() {
    return fetchAllTags()[CreateAdTagSections.things] ?? const [];
  }

  List<TagGroupModel> fetchDealTermsTags() {
    return fetchAllTags()[CreateAdTagSections.dealTerms] ?? const [];
  }

  TagGroupModel fetchContactInfoTags() {
    final groups = fetchAllTags()[CreateAdTagSections.contactInfo] ?? const [];
    return groups.isNotEmpty ? groups.first : const TagGroupModel();
  }

  void createAd(CreateAdRequest request) {
    final payload = const JsonEncoder.withIndent('  ').convert(request.toJson());
    // ignore: avoid_print
    print('CreateAdMockDataSource.createAd payload:\n$payload');
  }

  Map<String, List<TagGroupModel>> _mapFromJson(Map<String, dynamic> json) {
    final mapped = <String, List<TagGroupModel>>{};

    for (final entry in json.entries) {
      final groupsRaw = entry.value;
      if (groupsRaw is! List) {
        continue;
      }

      final groups = groupsRaw
          .whereType<Map<String, dynamic>>()
          .map(_toGroup)
          .toList(growable: false);

      mapped[entry.key] = groups;
    }

    return mapped;
  }

  TagGroupModel _toGroup(Map<String, dynamic> json) {
    final tagsRaw = json['tags'];
    final tags = tagsRaw is List
        ? tagsRaw.whereType<Map<String, dynamic>>().map(_toTag).toList(growable: false)
        : const <TagModel>[];

    final groupId = ((json['id'] as num?)?.toInt() ?? 0).toString();
    final groupTitle = json['title'] as String? ?? '';

    return TagGroupModel(groupId: groupId, groupTitle: groupTitle, tags: tags);
  }

  TagModel _toTag(Map<String, dynamic> json) {
    return TagModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      isSelected: false,
    );
  }
}
