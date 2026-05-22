import 'package:domain/models/preferences_tags/selected_user_preferences_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_model.freezed.dart';

@freezed
sealed class TenantModel with _$TenantModel {
  const factory TenantModel({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String avatarUrl,
    @Default('') String phone,
    @Default(0) int age,
    @Default('') String gender,
    @Default('') String city,
    @Default(false) bool isVerified,
    @Default('0.0') String rating,
    @Default(0) int reviewsCount,
  }) = _TenantModel;
  const TenantModel._();

  String get fullName {
    return [firstName, lastName].where((value) => value.trim().isNotEmpty).join(' ');
  }
}

@freezed
sealed class TenantProfileModel with _$TenantProfileModel {
  const factory TenantProfileModel({
    @Default('') String about,
    @Default(SelectedUserPreferencesModel()) SelectedUserPreferencesModel preferences,
  }) = _TenantProfileModel;
}
