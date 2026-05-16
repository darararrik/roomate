import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_preview_model.dart';

part 'group_list_item_model.freezed.dart';

@freezed
sealed class GroupListItemModel with _$GroupListItemModel {
  const factory GroupListItemModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int matchPercent,
    @Default(0) int participantsCount,
    @Default(0) int maxParticipantsCount,
    @Default([]) List<String> participantAvatars,
    @Default('') String price,
    @Default(ApartamentPreviewModel()) ApartamentPreviewModel apartament,
  }) = _GroupListItemModel;
}
