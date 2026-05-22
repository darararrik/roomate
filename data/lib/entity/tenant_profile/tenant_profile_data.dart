import 'package:data/entity/prefernces_tags/selected_user_preferences_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_profile_data.freezed.dart';
part 'tenant_profile_data.g.dart';

@freezed
sealed class TenantProfileData with _$TenantProfileData {
  const factory TenantProfileData({
    @JsonKey(name: 'about') @Default('') String about,
    @JsonKey(name: 'preferences') SelectedUserPreferencesData? preferences,
  }) = _TenantProfileData;

  factory TenantProfileData.fromJson(Map<String, dynamic> json) =>
      _$TenantProfileDataFromJson(json);
}
