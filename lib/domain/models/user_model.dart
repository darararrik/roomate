import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/shared/utils/constants.dart';

part 'user_model.freezed.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default('') String firstName,
    @Default('') String lastName,
    //TODO: Мб CityModel будет нужен
    @Default('') String city,
    @Default(Constants.avatarNull) String avatarUrl,
    @Default(GenderEnum.male) GenderEnum gender,
    @Default('') String phone,
    @Default(0) int age,
    @Default(false) bool isVerified,
    @Default([]) List<TagModel> tags,
  }) = _UserModel;
}
