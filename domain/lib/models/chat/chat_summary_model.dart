import 'package:domain/models/apartaments/apartament_preview_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_summary_model.freezed.dart';

@freezed
sealed class ChatSummaryModel with _$ChatSummaryModel {
  const factory ChatSummaryModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String listingTitle,
    @Default('') String avatarUrl,
    @Default('') String participantId,
    @Default('') String participantName,
    @Default(0) int participantsCount,
    @Default('') String lastMessageSenderName,
    @Default('') String lastMessageText,
    @Default('') String applicationStatus,
    @Default(false) bool isLocal,
    DateTime? updatedAt,
    @Default(0) int unreadCount,
    @Default(ApartamentPreviewModel()) ApartamentPreviewModel apartament,
  }) = _ChatSummaryModel;
}
