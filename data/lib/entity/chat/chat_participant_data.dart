import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant_data.freezed.dart';

@freezed
sealed class ChatParticipantData with _$ChatParticipantData {
  const factory ChatParticipantData({
    @Default('') String id,
    @Default('') String name,
    @Default('') String avatarUrl,
  }) = _ChatParticipantData;

  const ChatParticipantData._();

  factory ChatParticipantData.fromJson(Map<String, dynamic> json) {
    final firstName = _string(json['first_name']);
    final lastName = _string(json['last_name']);
    final fullName = _string(json['full_name']);

    return ChatParticipantData(
      id: _string(json['id'] ?? json['user_id']),
      name: fullName.isNotEmpty ? fullName : '$firstName $lastName'.trim(),
      avatarUrl: _string(json['avatar_url'] ?? json['photo']),
    );
  }
}

String _string(dynamic value) {
  if (value == null) {
    return '';
  }

  return '$value';
}
