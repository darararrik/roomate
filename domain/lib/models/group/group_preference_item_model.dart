import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_preference_item_model.freezed.dart';

@freezed
sealed class GroupPreferenceItemModel with _$GroupPreferenceItemModel {
  const factory GroupPreferenceItemModel({
    @Default('') String title,
    @Default('') String value,
  }) = _GroupPreferenceItemModel;
}
