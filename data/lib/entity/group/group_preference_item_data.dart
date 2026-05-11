import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_preference_item_data.freezed.dart';
part 'group_preference_item_data.g.dart';

@freezed
abstract class GroupPreferenceItemData with _$GroupPreferenceItemData {
  const factory GroupPreferenceItemData({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'value') String? value,
  }) = _GroupPreferenceItemData;

  factory GroupPreferenceItemData.fromJson(Map<String, dynamic> json) =>
      _$GroupPreferenceItemDataFromJson(json);
}
