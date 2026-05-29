import 'package:freezed_annotation/freezed_annotation.dart';

import '../apartaments/apartament_data.dart';
import 'chat_message_data.dart';
import 'chat_participant_data.dart';

part 'chat_data.freezed.dart';

@freezed
sealed class ChatData with _$ChatData {
  const factory ChatData({
    @Default('') String id,
    @Default('') String title,
    @Default('') String avatarUrl,
    @Default('') String lastMessageText,
    DateTime? updatedAt,
    @Default(0) int unreadCount,
    ChatParticipantData? participant,
    ApartamentData? apartament,
    ChatMessageData? lastMessage,
  }) = _ChatData;

  const ChatData._();

  factory ChatData.fromJson(Map<String, dynamic> json) {
    final participantMap = _readMap(json, const [
      'participant',
      'other_user',
      'companion',
      'user',
    ]);
    final apartamentMap = _readMap(json, const [
      'apartament',
      'apartment',
      'ad',
      'listing',
    ]);
    final lastMessageMap = _readMap(json, const ['last_message']);

    return ChatData(
      id: _string(json['id'] ?? json['chat_id']),
      title: _string(json['title']),
      avatarUrl: _string(json['avatar_url']),
      lastMessageText: _string(
        json['last_message_text'] ??
            json['last_message_preview'] ??
            lastMessageMap?['text'],
      ),
      updatedAt: _dateTime(
        json['updated_at'] ??
            json['last_message_at'] ??
            lastMessageMap?['created_at'],
      ),
      unreadCount: _int(json['unread_count']),
      participant: participantMap == null
          ? null
          : ChatParticipantData.fromJson(participantMap),
      apartament: apartamentMap == null
          ? null
          : ApartamentData.fromJson(apartamentMap),
      lastMessage: lastMessageMap == null
          ? null
          : ChatMessageData.fromJson(lastMessageMap),
    );
  }
}

Map<String, dynamic>? _readMap(Map<String, dynamic> json, List<String> keys) {
  for (final key in keys) {
    final value = json[key];
    if (value is Map<String, dynamic>) {
      return value;
    }
  }

  return null;
}

String _string(dynamic value) {
  if (value == null) {
    return '';
  }

  return '$value';
}

int _int(dynamic value) {
  if (value is int) {
    return value;
  }

  if (value is num) {
    return value.toInt();
  }

  return int.tryParse('$value') ?? 0;
}

DateTime? _dateTime(dynamic value) {
  if (value == null) {
    return null;
  }

  return DateTime.tryParse('$value')?.toLocal();
}
