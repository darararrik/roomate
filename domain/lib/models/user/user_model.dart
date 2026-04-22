import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

part 'user_model.freezed.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String city,
    @Default(Constants.defaultProfileImage) String avatarUrl,
    @Default(GenderEnum.male) GenderEnum gender,
    @Default('') String phone,
    @Default(0) int age,
    @Default(false) bool isVerified,
    @Default(false) bool isOwner,
    @Default(true) bool isNewUser,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.guest() => const UserModel();

  bool get isGuest => id == 0 && firstName.isEmpty && lastName.isEmpty && phone.isEmpty;
}
