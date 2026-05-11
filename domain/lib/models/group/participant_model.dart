import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_model.freezed.dart';

@freezed
sealed class ParticipantModel with _$ParticipantModel {
  const factory ParticipantModel({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String avatarUrl,
    @Default(false) bool isVerified,
    @Default('') String role,
  }) = _ParticipantModel;
}
