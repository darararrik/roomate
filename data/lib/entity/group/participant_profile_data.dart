import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_preference_item_data.dart';

part 'participant_profile_data.freezed.dart';
part 'participant_profile_data.g.dart';

@freezed
abstract class ParticipantProfileData with _$ParticipantProfileData {
  const factory ParticipantProfileData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'rating') String? rating,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'personal_qualities')
    List<GroupPreferenceItemData>? personalQualities,
    @JsonKey(name: 'household_habits')
    List<GroupPreferenceItemData>? householdHabits,
    @JsonKey(name: 'pets') List<GroupPreferenceItemData>? pets,
  }) = _ParticipantProfileData;

  factory ParticipantProfileData.fromJson(Map<String, dynamic> json) =>
      _$ParticipantProfileDataFromJson(json);
}
