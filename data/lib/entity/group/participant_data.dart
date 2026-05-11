import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_data.freezed.dart';
part 'participant_data.g.dart';

@freezed
abstract class ParticipantData with _$ParticipantData {
  const factory ParticipantData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: 'role') String? role,
  }) = _ParticipantData;

  factory ParticipantData.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDataFromJson(json);
}
