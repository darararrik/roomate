import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/entity/user_tags/user_tag_data.dart';

part 'profile_data.freezed.dart';
part 'profile_data.g.dart';

class UserTagsConverter implements JsonConverter<List<UserTagData>?, Object?> {
  const UserTagsConverter();

  @override
  List<UserTagData>? fromJson(Object? json) {
    if (json is! List) {
      return null;
    }

    return json.whereType<Map<String, dynamic>>().map(UserTagData.fromJson).toList();
  }

  @override
  Object? toJson(List<UserTagData>? object) => object;
}

@freezed
sealed class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "age") int? age,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "photo") String? avatarUrl,
    @JsonKey(name: "status") bool? isVerified,
    @JsonKey(name: "tags") @UserTagsConverter() List<UserTagData>? tags,
    @JsonKey(name: "is_owner") bool? isOwner,
    @JsonKey(name: "is_new_user") bool? isNewUser,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);
}
