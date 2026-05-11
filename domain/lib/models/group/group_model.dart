import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_model.dart';

part 'group_model.freezed.dart';

@freezed
sealed class GroupModel with _$GroupModel {
  const factory GroupModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int matchPercent,
    @Default(0) int participantsCount,
    @Default(0) int maxParticipantsCount,
    @Default(ApartamentModel()) ApartamentModel apartament,
  }) = _GroupModel;
}
