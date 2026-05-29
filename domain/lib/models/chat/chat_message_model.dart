import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';

@freezed
sealed class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @Default('') String id,
    @Default('') String chatId,
    @Default('') String text,
    @Default('') String senderId,
    @Default('') String senderName,
    @Default('') String senderAvatarUrl,
    required DateTime createdAt,
  }) = _ChatMessageModel;
}
