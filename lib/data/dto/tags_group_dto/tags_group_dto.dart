import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/models/tags_group/tags_group_model.dart';

part 'tags_group_dto.freezed.dart';
part 'tags_group_dto.g.dart';

@freezed
sealed class TagsGroupDto with _$TagsGroupDto {
  const factory TagsGroupDto({
    required String title,
    String? description,
    required List<String> tags,
    required bool isRadio,
  }) = _TagsGroupDto;

  factory TagsGroupDto.fromJson(Map<String, dynamic> json) =>
      _$TagsGroupDtoFromJson(json);
}

extension TagsGroupDtoX on TagsGroupDto {
  TagsGroupModel toDomain() {
    return TagsGroupModel(
      title: title,
      description: description,
      tags: tags,
      isRadio: isRadio,
    );
  }
}
