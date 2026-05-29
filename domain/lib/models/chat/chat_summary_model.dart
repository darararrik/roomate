import 'package:domain/models/apartaments/apartament_preview_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_summary_model.freezed.dart';

@freezed
sealed class ChatSummaryModel with _$ChatSummaryModel {
  const factory ChatSummaryModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String avatarUrl,
    @Default('') String participantId,
    @Default('') String participantName,
    @Default('') String lastMessageText,
    DateTime? updatedAt,
    @Default(0) int unreadCount,
    @Default(ApartamentPreviewModel()) ApartamentPreviewModel apartament,
  }) = _ChatSummaryModel;
}
