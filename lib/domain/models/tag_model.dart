import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_model.freezed.dart';

@freezed
sealed class TagModel with _$TagModel {
  const factory TagModel({
    @Default(0) int id,
    @Default('') String title,
    @Default(false) bool isSelected,
  }) = _TagModel;
}

@freezed
sealed class TagGroupModel with _$TagGroupModel {
  const factory TagGroupModel({
    @Default('') String groupId,
    @Default('') String groupTitle,
    @Default([]) List<TagModel> tags,
  }) = _TagGroupModel;
}
