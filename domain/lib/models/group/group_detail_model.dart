import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_model.dart';
import 'group_conditions_model.dart';

part 'group_detail_model.freezed.dart';

@freezed
sealed class GroupDetailModel with _$GroupDetailModel {
  const factory GroupDetailModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int matchPercent,
    @Default(0) int participantsCount,
    @Default(0) int maxParticipantsCount,
    @Default('') String status,
    @Default('') String applicationStatus,
    @Default('') String ownerUserId,
    @Default(GroupConditionsModel()) GroupConditionsModel conditions,
    @Default(ApartamentModel()) ApartamentModel apartament,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(false) bool isFavorite,
  }) = _GroupDetailModel;
}
