import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_tags/user_tag_data.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
sealed class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "age") int? age,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "photo") String? avatarUrl,
    @JsonKey(name: "status") bool? isVerified,
    @JsonKey(name: "tags") List<UserTagData>? tags,
    @JsonKey(name: "is_owner") bool? isOwner,
    @JsonKey(name: "isNewUser") bool? isNewUser,
  }) = _UserData;
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
