import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String id,
    @Default('') String phone,
    @Default('') String role,
    @Default(false) bool isNewUser,
  }) = _UserModel;
}
