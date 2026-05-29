import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class ChatMapper {
  static ChatSummaryModel toSummaryModel(ChatData data, {String baseUrl = ''}) {
    final apartament = data.apartament == null
        ? const ApartamentPreviewModel()
        : ApartamentMapper.toPreviewModel(data.apartament!, baseUrl: baseUrl);
    final participant = data.participant;
    final title = data.title.trim().isNotEmpty
        ? data.title
        : (participant?.name.trim().isNotEmpty ?? false)
        ? participant!.name
        : apartament.address;
    final avatarUrl = _resolveAvatarUrl(
      data.avatarUrl,
      participant?.avatarUrl ?? '',
      apartament.imageUrls,
      baseUrl: baseUrl,
    );
    final lastMessageText = data.lastMessage?.text.trim().isNotEmpty ?? false
        ? data.lastMessage!.text
        : data.lastMessageText;

    return ChatSummaryModel(
      id: data.id,
      title: title,
      avatarUrl: avatarUrl,
      participantId: participant?.id ?? data.lastMessage?.senderId ?? '',
      participantName: participant?.name ?? '',
      participantsCount: data.participantsCount,
      lastMessageSenderName: data.lastMessage?.senderName ?? '',
      lastMessageText: lastMessageText,
      updatedAt: data.updatedAt ?? data.lastMessage?.createdAt,
      unreadCount: data.unreadCount,
      apartament: apartament,
    );
  }

  static ChatMessageModel toMessageModel(
    ChatMessageData data, {
    String baseUrl = '',
  }) {
    return ChatMessageModel(
      id: data.id,
      chatId: data.chatId,
      text: data.text,
      senderId: data.senderId,
      senderName: data.senderName,
      senderAvatarUrl: resolveBackendMediaUrl(
        data.senderAvatarUrl,
        baseUrl: baseUrl,
      ),
      createdAt: data.createdAt ?? DateTime.now(),
    );
  }

  static ChatMessagesPageModel toMessagesPageModel(
    ChatMessagesPageData data, {
    String baseUrl = '',
  }) {
    return ChatMessagesPageModel(
      chatId: data.chatId,
      title: data.title,
      participantsCount: data.participantsCount,
      messages: data.messages
          .map((item) => toMessageModel(item, baseUrl: baseUrl))
          .toList(growable: false),
    );
  }

  static String _resolveAvatarUrl(
    String primary,
    String fallback,
    List<String> apartamentImages, {
    required String baseUrl,
  }) {
    final participantAvatar = primary.trim().isNotEmpty ? primary : fallback;
    if (participantAvatar.trim().isNotEmpty) {
      return resolveBackendMediaUrl(participantAvatar, baseUrl: baseUrl);
    }

    if (apartamentImages.isNotEmpty) {
      return apartamentImages.first;
    }

    return '';
  }
}
