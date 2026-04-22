import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  factory UserState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(Constants.defaultProfileImage) String avatarUrl,
    @Default(null) GenderEnum? gender,
    @Default('') String age,
    @Default(false) bool isVerified,
    @Default('') String firstNameError,
    @Default('') String lastNameError,
    @Default('') String ageError,
    @Default('') String genderError,
    @Default(false) bool isFormValid,
  }) = _UserState;
}
