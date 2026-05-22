import 'package:data/entity/prefernces_tags/selected_user_preferences_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.freezed.dart';
part 'profile_data.g.dart';

@freezed
sealed class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "age") int? age,
    @JsonKey(name: "city_fias_id") String? cityFiasId,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "photo") String? avatarUrl,
    @JsonKey(name: "status") bool? isVerified,
    @JsonKey(name: "preferences") SelectedUserPreferencesData? preferences,
    @JsonKey(name: "is_owner") bool? isOwner,
    @JsonKey(name: "is_new_user") bool? isNewUser,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);
}
