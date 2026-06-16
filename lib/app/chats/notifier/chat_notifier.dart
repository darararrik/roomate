import 'dart:async';

import 'package:data/services/chat_socket_service.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'chat_notifier.freezed.dart';
part 'chat_notifier.g.dart';

@riverpod
class Chat extends _$Chat {
  IChatsRepository get _repository => ref.read(chatsRepositoryProvider);
  ChatSocketService get _socketService => ref.read(chatSocketServiceProvider);

  late final InMemoryChatController chatController;
  late final TextEditingController textController;
  StreamSubscription<ChatMessageModel>? _chatSubscription;

  @override
  Future<ChatState> build(ChatSummaryModel chat) async {
    final profile = await ref.read(globalProfileProvider.future);
    chatController = InMemoryChatController();
    textController = TextEditingController();

    ref.onDispose(() {
      _chatSubscription?.cancel();
      _socketService.releaseChat(chat.id);
      textController.dispose();
      chatController.dispose();
    });

    if (chat.isLocal) {
      return ChatState(
        chat: chat,
        currentUserId: profile.id,
        currentUserName: _currentUserName(profile),
        currentUserAvatarUrl: profile.avatarUrl,
        applicationStatus: chat.applicationStatus,
      );
    }

    if (profile.isGuest) {
      return ChatState(
        chat: chat,
        currentUserId: profile.id,
        currentUserName: _currentUserName(profile),
        currentUserAvatarUrl: profile.avatarUrl,
        applicationStatus: chat.applicationStatus,
      );
    }

    final result = await _repository.fetchMessages(chat.id);
    final page = result.fold((error) => throw error, (page) => page);
    final messages = _sortMessages(page.messages);
    final resolvedTitle = page.title.trim().isNotEmpty
        ? page.title
        : chat.title;

    await chatController.setMessages(
      messages.map(_messageFromModel).toList(growable: false),
      animated: false,
    );

    final stream = await _socketService.watchChat(chat.id);
    _chatSubscription = stream.listen(_handleIncomingMessage);

    unawaited(_repository.markRead(chat.id));

    return ChatState(
      chat: chat.copyWith(
        unreadCount: 0,
        title: resolvedTitle,
        participantsCount: page.participantsCount == 0
            ? chat.participantsCount
            : page.participantsCount,
      ),
      messages: messages,
      currentUserId: profile.id,
      currentUserName: _currentUserName(profile),
      currentUserAvatarUrl: profile.avatarUrl,
    );
  }

  void onApartmentPressed() {
    final apartmentId = state.requireValue.chat.apartament.id;
    if (apartmentId.isEmpty) {
      return;
    }

    ref.nav.push(ApartamnetRoute(apartmentId: apartmentId));
  }

  Future<void> onMessageSend(String rawText) async {
    if (await ref.redirectToAuthIfGuest()) {
      return;
    }

    final currentState = state.value;
    if (currentState == null || currentState.isSending) {
      return;
    }

    final text = rawText.trim();
    if (text.isEmpty) {
      return;
    }

    if (currentState.chat.isLocal) {
      final message = ChatMessageModel(
        id: '${DateTime.now().microsecondsSinceEpoch}',
        chatId: currentState.chat.id,
        text: text,
        senderId: currentState.currentUserId,
        senderName: currentState.currentUserName,
        senderAvatarUrl: currentState.currentUserAvatarUrl,
        createdAt: DateTime.now(),
      );
      textController.clear();
      _applyState(
        currentState.copyWith(
          chat: _updateChat(currentState.chat, message),
          messages: _mergeMessages(currentState.messages, message),
        ),
      );
      return;
    }

    state = AsyncData(currentState.copyWith(isSending: true));

    final result = await _repository.sendMessage(currentState.chat.id, text);
    if (!ref.mounted) {
      return;
    }

    result.fold(
      (error) {
        state = AsyncData(currentState.copyWith(isSending: false));
        ref.nav.showSnackBar(
          message: error.messages.isNotEmpty
              ? error.messages
              : ref.l10n.errorGeneric,
        );
      },
      (message) {
        textController.clear();
        _applyState(
          currentState.copyWith(
            chat: _updateChat(currentState.chat, message),
            messages: _mergeMessages(currentState.messages, message),
            isSending: false,
          ),
        );
      },
    );
  }

  Future<void> onApplyPressed() async {
    if (await ref.redirectToAuthIfGuest()) {
      return;
    }

    final currentState = state.value;
    if (currentState == null ||
        !currentState.chat.isLocal ||
        currentState.isApplying ||
        currentState.applicationStatus == 'pending') {
      return;
    }

    state = AsyncData(currentState.copyWith(isApplying: true));

    final result = await ref
        .read(apartamentsRepositoryProvider)
        .applyToAd(currentState.chat.apartament.id);
    if (!ref.mounted) {
      return;
    }

    result.fold(
      (error) {
        state = AsyncData(currentState.copyWith(isApplying: false));
        ref.nav.showSnackBar(
          message: error.messages.isNotEmpty
              ? error.messages
              : ref.l10n.groupApplicationSubmitError,
        );
      },
      (application) {
        state = AsyncData(
          currentState.copyWith(
            isApplying: false,
            applicationStatus: application.status,
          ),
        );
        ref.nav.showSnackBar(message: ref.l10n.groupApplicationSent);
      },
    );
  }

  Future<User> resolveUser(UserID id) async {
    final currentState = state.value;
    final profile = ref.read(globalProfileProvider).value;

    if (currentState == null) {
      return User(id: id);
    }

    if (id == currentState.currentUserId) {
      final currentUserName =
          '${profile?.firstName ?? ''} ${profile?.lastName ?? ''}'.trim();
      return User(
        id: id,
        name: currentUserName.isNotEmpty ? currentUserName : 'Вы',
        imageSource: profile?.avatarUrl,
      );
    }

    final author = currentState.messages.lastWhere(
      (message) => message.senderId == id,
      orElse: () => ChatMessageModel(createdAt: DateTime.now()),
    );
    final fallbackName = currentState.chat.participantName.isNotEmpty
        ? currentState.chat.participantName
        : currentState.chat.title;

    return User(
      id: id,
      name: author.senderName.isNotEmpty ? author.senderName : fallbackName,
      imageSource: author.senderAvatarUrl.isNotEmpty
          ? author.senderAvatarUrl
          : currentState.chat.avatarUrl,
    );
  }

  TextMessage _messageFromModel(ChatMessageModel message) {
    return TextMessage(
      id: message.id,
      authorId: message.senderId,
      createdAt: message.createdAt,
      text: message.text,
      metadata: {
        'authorName': message.senderName,
        'authorAvatarUrl': message.senderAvatarUrl,
      },
    );
  }

  void _handleIncomingMessage(ChatMessageModel message) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    final normalizedMessage = message.chatId.isEmpty
        ? message.copyWith(chatId: currentState.chat.id)
        : message;

    _applyState(
      currentState.copyWith(
        chat: _updateChat(currentState.chat, normalizedMessage),
        messages: _mergeMessages(currentState.messages, normalizedMessage),
      ),
    );

    if (normalizedMessage.senderId != currentState.currentUserId) {
      unawaited(_repository.markRead(currentState.chat.id));
    }
  }

  void _applyState(ChatState nextState) {
    state = AsyncData(nextState);
    unawaited(
      chatController.setMessages(
        nextState.messages.map(_messageFromModel).toList(growable: false),
        animated: false,
      ),
    );
  }

  ChatSummaryModel _updateChat(
    ChatSummaryModel chat,
    ChatMessageModel message,
  ) {
    return chat.copyWith(
      lastMessageText: message.text,
      updatedAt: message.createdAt,
      unreadCount: 0,
    );
  }

  List<ChatMessageModel> _mergeMessages(
    List<ChatMessageModel> currentMessages,
    ChatMessageModel nextMessage,
  ) {
    final messages = [...currentMessages];
    final index = messages.indexWhere((item) => item.id == nextMessage.id);

    if (index == -1) {
      messages.add(nextMessage);
    } else {
      messages[index] = nextMessage;
    }

    return _sortMessages(messages);
  }

  List<ChatMessageModel> _sortMessages(List<ChatMessageModel> items) {
    final uniqueMessages = <String, ChatMessageModel>{};
    for (final item in items) {
      uniqueMessages[item.id] = item;
    }

    final messages = uniqueMessages.values.toList(growable: false);
    messages.sort((left, right) => left.createdAt.compareTo(right.createdAt));
    return messages;
  }

  String _currentUserName(ProfileModel profile) {
    final fullName = '${profile.firstName} ${profile.lastName}'.trim();
    return fullName.isNotEmpty ? fullName : 'Вы';
  }
}

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState({
    @Default(ChatSummaryModel()) ChatSummaryModel chat,
    @Default([]) List<ChatMessageModel> messages,
    @Default('') String currentUserId,
    @Default('') String currentUserName,
    @Default('') String currentUserAvatarUrl,
    @Default(false) bool isApplying,
    @Default('') String applicationStatus,
    @Default(false) bool isSending,
  }) = _ChatState;
}
