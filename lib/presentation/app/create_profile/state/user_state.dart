import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/domain/models/user_tag_model.dart';
import 'package:roomate/shared/utils/constants.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  factory UserState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(Constants.avatarNull) String avatarUrl,
    @Default(null) GenderEnum? gender,
    @Default('') String age,
    @Default(false) bool isVerified,
    @Default([]) List<UserTagModel> tags,
    @Default('') String firstNameError,
    @Default('') String lastNameError,
    @Default('') String ageError,
    @Default('') String genderError,
    @Default(false) bool isFormValid,
  }) = _UserState;
}
