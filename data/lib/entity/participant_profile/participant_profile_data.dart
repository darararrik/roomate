import 'package:freezed_annotation/freezed_annotation.dart';

import '../option/option_data.dart';

part 'participant_profile_data.freezed.dart';
part 'participant_profile_data.g.dart';

@freezed
abstract class ParticipantProfileData with _$ParticipantProfileData {
  const factory ParticipantProfileData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @JsonKey(name: 'role') @Default('') String role,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    @JsonKey(name: 'age') @Default(0) int age,
    @JsonKey(name: 'gender') @Default('') String gender,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'city_fias_id') @Default('') String cityFiasId,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'about') @Default('') String about,
    @JsonKey(name: 'rating') @Default(0) num rating,
    @JsonKey(name: 'reviews_count') @Default(0) int reviewsCount,
    @JsonKey(name: 'target_apartment') @Default(TargetApartmentData()) TargetApartmentData targetApartment,
    @JsonKey(name: 'questionnaire') @Default(ParticipantQuestionnaireData()) ParticipantQuestionnaireData questionnaire,
  }) = _ParticipantProfileData;

  factory ParticipantProfileData.fromJson(Map<String, dynamic> json) => _$ParticipantProfileDataFromJson(json);
}

@freezed
abstract class TargetApartmentData with _$TargetApartmentData {
  const factory TargetApartmentData({
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'price') @Default('') String price,
    @JsonKey(name: 'rooms_count') @Default('') String roomsCount,
    @JsonKey(name: 'area') @Default('') String area,
    @JsonKey(name: 'floor') @Default(0) int floor,
    @JsonKey(name: 'total_floor') @Default(0) int totalFloor,
    @JsonKey(name: 'address') @Default('') String address,
  }) = _TargetApartmentData;

  factory TargetApartmentData.fromJson(Map<String, dynamic> json) => _$TargetApartmentDataFromJson(json);
}

@freezed
abstract class ParticipantQuestionnaireData with _$ParticipantQuestionnaireData {
  const factory ParticipantQuestionnaireData({
    @JsonKey(name: 'personal_traits') @Default([]) List<ParticipantQuestionnaireItemData> personalTraits,
    @JsonKey(name: 'household_habits') @Default([]) List<ParticipantQuestionnaireItemData> householdHabits,
    @JsonKey(name: 'pets') @Default([]) List<ParticipantQuestionnaireItemData> pets,
  }) = _ParticipantQuestionnaireData;

  factory ParticipantQuestionnaireData.fromJson(Map<String, dynamic> json) =>
      _$ParticipantQuestionnaireDataFromJson(json);
}

@freezed
abstract class ParticipantQuestionnaireItemData with _$ParticipantQuestionnaireItemData {
  const factory ParticipantQuestionnaireItemData({
    @JsonKey(name: 'key') @Default('') String key,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'values') @Default([]) List<OptionData> values,
  }) = _ParticipantQuestionnaireItemData;

  factory ParticipantQuestionnaireItemData.fromJson(Map<String, dynamic> json) =>
      _$ParticipantQuestionnaireItemDataFromJson(json);
}
