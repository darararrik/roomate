import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_preference_item_data.dart';
import 'participant_data.dart';

part 'group_conditions_data.freezed.dart';
part 'group_conditions_data.g.dart';

@freezed
abstract class GroupConditionsData with _$GroupConditionsData {
  const factory GroupConditionsData({
    @JsonKey(name: 'group_id') String? groupId,
    @JsonKey(name: 'who_group_is_looking_for')
    List<String>? whoGroupIsLookingFor,
    @JsonKey(name: 'living_rules') List<String>? livingRules,
    @JsonKey(name: 'apartment_lifestyle')
    List<GroupPreferenceItemData>? apartmentLifestyle,
    @JsonKey(name: 'apartment_atmosphere')
    List<GroupPreferenceItemData>? apartmentAtmosphere,
    @JsonKey(name: 'participants_count') int? participantsCount,
    @JsonKey(name: 'max_participants_count') int? maxParticipantsCount,
    @JsonKey(name: 'participants') List<ParticipantData>? participants,
  }) = _GroupConditionsData;

  factory GroupConditionsData.fromJson(Map<String, dynamic> json) =>
      _$GroupConditionsDataFromJson(json);
}
