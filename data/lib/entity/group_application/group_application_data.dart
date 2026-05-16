import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_application_data.freezed.dart';
part 'group_application_data.g.dart';

@freezed
sealed class GroupApplicationData with _$GroupApplicationData {
  const factory GroupApplicationData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'group_id') String? groupId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _GroupApplicationData;

  factory GroupApplicationData.fromJson(Map<String, dynamic> json) =>
      _$GroupApplicationDataFromJson(json);
}
