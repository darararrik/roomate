import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_message_data.dart';

part 'chat_messages_page_data.freezed.dart';

@freezed
sealed class ChatMessagesPageData with _$ChatMessagesPageData {
  const factory ChatMessagesPageData({
    @Default('') String chatId,
    @Default('') String title,
    @Default(0) int participantsCount,
    @Default([]) List<ChatMessageData> messages,
  }) = _ChatMessagesPageData;

  const ChatMessagesPageData._();

  factory ChatMessagesPageData.fromJson(Map<String, dynamic> json) {
    final rawMessages = json['messages'];
    final messages = rawMessages is List<dynamic>
        ? rawMessages
              .map((item) => ChatMessageData.fromJson(item as Map<String, dynamic>))
              .toList(growable: false)
        : const <ChatMessageData>[];

    return ChatMessagesPageData(
      chatId: _string(json['chat_id'] ?? json['id']),
      title: _string(json['title']),
      participantsCount: _int(json['participants_count']),
      messages: messages,
    );
  }
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
