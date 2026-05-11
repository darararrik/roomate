import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_data.dart';

part 'group_data.freezed.dart';
part 'group_data.g.dart';

@freezed
abstract class GroupData with _$GroupData {
  const factory GroupData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'match_percent') int? matchPercent,
    @JsonKey(name: 'participants_count') int? participantsCount,
    @JsonKey(name: 'max_participants_count') int? maxParticipantsCount,
    @JsonKey(name: 'apartament') ApartamentData? apartament,
  }) = _GroupData;

  factory GroupData.fromJson(Map<String, dynamic> json) =>
      _$GroupDataFromJson(json);
}
