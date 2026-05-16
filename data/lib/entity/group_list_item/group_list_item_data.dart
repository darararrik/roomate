import 'package:data/entity/apartaments/apartament_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_list_item_data.freezed.dart';
part 'group_list_item_data.g.dart';

@freezed
abstract class GroupListItemData with _$GroupListItemData {
  const factory GroupListItemData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'match_percent') @Default(0) int matchPercent,
    @JsonKey(name: 'participants_count') @Default(0) int participantsCount,
    @JsonKey(name: 'max_participants_count') @Default(0) int maxParticipantsCount,
    @JsonKey(name: 'participant_avatars') @Default(<String>[]) List<String> participantAvatars,
    @JsonKey(name: 'price') @Default('') String price,
    @JsonKey(name: 'apartment') @Default(ApartamentData()) ApartamentData apartament,
  }) = _GroupListItemData;

  factory GroupListItemData.fromJson(Map<String, dynamic> json) => _$GroupListItemDataFromJson(json);
}
