import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'is_new_user') bool? isNewUser,
  }) = _UserData;
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
