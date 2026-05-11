import 'package:freezed_annotation/freezed_annotation.dart';

import 'participant_model.dart';
import 'group_preference_item_model.dart';

part 'group_conditions_model.freezed.dart';

@freezed
sealed class GroupConditionsModel with _$GroupConditionsModel {
  const factory GroupConditionsModel({
    @Default('') String groupId,
    @Default([]) List<String> whoGroupIsLookingFor,
    @Default([]) List<String> livingRules,
    @Default([]) List<GroupPreferenceItemModel> apartmentLifestyle,
    @Default([]) List<GroupPreferenceItemModel> apartmentAtmosphere,
    @Default(0) int participantsCount,
    @Default(0) int maxParticipantsCount,
    @Default([]) List<ParticipantModel> participants,
  }) = _GroupConditionsModel;
}
