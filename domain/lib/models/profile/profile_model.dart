import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'profile_model.freezed.dart';

@freezed
sealed class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(0) int cityId,
    //TODO: Убрать после изменения на бэке
    @Default('') String city,
    @Default(Constants.defaultProfileImage) String avatarUrl,
    @Default(GenderEnum.male) GenderEnum gender,
    @Default('') String phone,
    @Default(0) int age,
    @Default(false) bool isVerified,
    @Default(false) bool isOwner,
    @Default(SelectedUserPreferencesModel())
    SelectedUserPreferencesModel preferences,
  }) = _ProfileModel;
  const ProfileModel._();

  factory ProfileModel.guest() => const ProfileModel();

  bool get isGuest =>
      id.isEmpty && firstName.isEmpty && lastName.isEmpty && phone.isEmpty;
}
