import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tag_model.freezed.dart';

@freezed
sealed class UserTagModel with _$UserTagModel {
  const factory UserTagModel({
    @Default(0) int id,
    @Default('') String title,
    @Default(false) bool isSelected,
  }) = _UserTagModel;
}

@freezed
sealed class UserTagsGroupModel with _$UserTagsGroupModel {
  const factory UserTagsGroupModel({
    @Default('') String groupId,
    @Default('') String groupTitle,
    @Default([]) List<UserTagModel> tags,
  }) = _UserTagsGroupModel;
}
