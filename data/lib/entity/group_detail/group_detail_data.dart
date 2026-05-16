import 'package:data/entity/option/option_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_data.dart';

part 'group_detail_data.freezed.dart';
part 'group_detail_data.g.dart';

@freezed
abstract class GroupDetailData with _$GroupDetailData {
  const factory GroupDetailData({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'match_percent') @Default(0) int matchPercent,
    @JsonKey(name: 'application_status') @Default('') String applicationStatus,
    @JsonKey(name: 'owner_user_id') @Default('') String ownerUserId,
    @JsonKey(name: 'participants_count') @Default(0) int participantsCount,
    @JsonKey(name: 'max_participants_count') @Default(0) int maxParticipantsCount,
    @JsonKey(name: 'apartment') @Default(ApartamentData()) ApartamentData apartament,
    @JsonKey(name: 'conditions') @Default(GroupDetailConditionsData()) GroupDetailConditionsData conditions,
    @JsonKey(name: 'preferences') @Default(GroupDetailPreferencesData()) GroupDetailPreferencesData preferences,
    @JsonKey(name: 'participants') @Default(<ParticipantData>[]) List<ParticipantData> participants,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
  }) = _GroupDetailData;

  factory GroupDetailData.fromJson(Map<String, dynamic> json) => _$GroupDetailDataFromJson(json);
}

@freezed
abstract class GroupDetailConditionsData with _$GroupDetailConditionsData {
  const factory GroupDetailConditionsData({
    @JsonKey(name: 'desired_gender') String? desiredGender,
    @JsonKey(name: 'min_age') int? minAge,
    @JsonKey(name: 'max_age') int? maxAge,
    @JsonKey(name: 'children_allowed') bool? childrenAllowed,
    @JsonKey(name: 'partner_allowed') bool? partnerAllowed,
    @JsonKey(name: 'pets_allowed') bool? petsAllowed,
    @JsonKey(name: 'smoking_allowed') bool? smokingAllowed,
  }) = _GroupDetailConditionsData;

  factory GroupDetailConditionsData.fromJson(Map<String, dynamic> json) => _$GroupDetailConditionsDataFromJson(json);
}

@freezed
abstract class GroupDetailPreferencesData with _$GroupDetailPreferencesData {
  const factory GroupDetailPreferencesData({
    @JsonKey(name: 'communication') OptionData? communication,
    @JsonKey(name: 'sleep') OptionData? sleep,
    @JsonKey(name: 'bad_habits') OptionData? badHabits,
    @JsonKey(name: 'guests') OptionData? guests,
    @JsonKey(name: 'noise_level') OptionData? noiseLevel,
    @JsonKey(name: 'cleaning') OptionData? cleaning,
    @JsonKey(name: 'pets') OptionData? pets,
    @JsonKey(name: 'pets_attitude') OptionData? petsAttitude,
  }) = _GroupDetailPreferencesData;

  factory GroupDetailPreferencesData.fromJson(Map<String, dynamic> json) => _$GroupDetailPreferencesDataFromJson(json);
}

@freezed
abstract class ParticipantData with _$ParticipantData {
  const factory ParticipantData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    //TODO: убрать is_verified, узнать у бэка
    @JsonKey(name: 'is_verified') bool? isVerified,
  }) = _ParticipantData;

  factory ParticipantData.fromJson(Map<String, dynamic> json) => _$ParticipantDataFromJson(json);
}
