import 'package:domain/models/chat/chat_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_messages_page_model.freezed.dart';

@freezed
sealed class ChatMessagesPageModel with _$ChatMessagesPageModel {
  const factory ChatMessagesPageModel({
    @Default('') String chatId,
    @Default('') String title,
    @Default(0) int participantsCount,
    @Default([]) List<ChatMessageModel> messages,
  }) = _ChatMessagesPageModel;
}
