import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/constants.dart';

part 'user_model.freezed.dart';

@freezed
sealed class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(Constants.avatarNull) String avatarUrl,
    @Default(0) int age,
    @Default(false) bool isVerified,
  }) = _User;
}
