import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_preference_item_model.dart';

part 'participant_profile_model.freezed.dart';

@freezed
sealed class ParticipantProfileModel with _$ParticipantProfileModel {
  const factory ParticipantProfileModel({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String avatarUrl,
    @Default(false) bool isVerified,
    @Default(0) int age,
    @Default('') String gender,
    @Default('') String role,
    @Default('0') String rating,
    @Default(0) int reviewsCount,
    @Default([]) List<GroupPreferenceItemModel> personalQualities,
    @Default([]) List<GroupPreferenceItemModel> householdHabits,
    @Default([]) List<GroupPreferenceItemModel> pets,
  }) = _ParticipantProfileModel;
}
