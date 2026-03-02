import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_group_model.freezed.dart';

@freezed
sealed class TagsGroupModel with _$TagsGroupModel {
  const factory TagsGroupModel({
    required String title,
    String? description,
    required List<String> tags,
    required bool isRadio,
  }) = _TagsGroupModel;
}
