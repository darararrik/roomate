import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_data.freezed.dart';

@freezed
sealed class ChatMessageData with _$ChatMessageData {
  const factory ChatMessageData({
    @Default('') String id,
    @Default('') String chatId,
    @Default('') String text,
    @Default('') String senderId,
    @Default('') String senderName,
    @Default('') String senderAvatarUrl,
    DateTime? createdAt,
  }) = _ChatMessageData;

  const ChatMessageData._();

  factory ChatMessageData.fromJson(Map<String, dynamic> json) {
    final sender = _readMap(json, const ['sender', 'author', 'user']);
    final senderId = _string(
      json['sender_id'] ??
          json['author_id'] ??
          json['user_id'] ??
          sender?['id'],
    );
    final firstName = _string(sender?['first_name']);
    final lastName = _string(sender?['last_name']);
    final fallbackName = '$firstName $lastName'.trim();

    return ChatMessageData(
      id: _string(json['id'] ?? json['message_id']),
      chatId: _string(json['chat_id']),
      text: _string(json['text'] ?? json['message']),
      senderId: senderId,
      senderName: _string(
        json['sender_name'] ??
            json['author_name'] ??
            sender?['full_name'] ??
            fallbackName,
      ),
      senderAvatarUrl: _string(
        json['sender_avatar_url'] ??
            json['author_avatar_url'] ??
            sender?['avatar_url'] ??
            sender?['photo'],
      ),
      createdAt: _dateTime(json['created_at'] ?? json['timestamp']),
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

DateTime? _dateTime(dynamic value) {
  if (value == null) {
    return null;
  }

  return DateTime.tryParse('$value')?.toLocal();
}
