import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tag_data.freezed.dart';
part 'user_tag_data.g.dart';

@freezed
sealed class UserTagData with _$UserTagData {
  const factory UserTagData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "is_selected") bool? isSelected,
  }) = _UserTagData;

  factory UserTagData.fromJson(Map<String, dynamic> json) =>
      _$UserTagDataFromJson(json);
}

@freezed
sealed class UserTagsGroupData with _$UserTagsGroupData {
  const factory UserTagsGroupData({
    @JsonKey(name: "group_id") String? groupId,
    @JsonKey(name: "group_title") String? groupTitle,
    @JsonKey(name: "tags") List<UserTagData>? tags,
  }) = _UserTagsGroupData;

  factory UserTagsGroupData.fromJson(Map<String, dynamic> json) =>
      _$UserTagsGroupDataFromJson(json);
}
