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
  static const currentUserId = 'user1';
  static const ownerUserId = 'owner';

  IApartamentsRepository get _repository =>
      ref.read(apartamentsRepositoryProvider);

  late final InMemoryChatController chatController;
  late final TextEditingController textController;

  @override
  ChatState build(ApartamentModel apartment) {
    final messages = _initialMessages();
    chatController = InMemoryChatController(
      messages: messages.map(_messageFromModel).toList(),
    );
    textController = TextEditingController();

    ref.onDispose(() {
      textController.dispose();
      chatController.dispose();
    });

    return ChatState(apartment: apartment, messages: messages);
  }

  void onApartmentPressed() {
    final apartmentId = state.apartment.id;
    if (apartmentId.isEmpty) {
      return;
    }

    ref.nav.push(ApartamnetRoute(apartmentId: apartmentId));
  }

  Future<void> onMessageSend(String rawText) async {
    final text = rawText.trim();
    if (text.isEmpty) {
      return;
    }

    final message = ChatMessageModel(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      text: text,
      createdAt: DateTime.now(),
      isMine: true,
    );

    state = state.copyWith(messages: [...state.messages, message]);

    await chatController.insertMessage(_messageFromModel(message));
  }

  Future<User> resolveUser(UserID id) async {
    return User(id: id, name: id == currentUserId ? 'Вы' : 'Сергей О.');
  }

  Future<void> onApplyPressed() async {
    final apartmentId = state.apartment.id;
    if (apartmentId.isEmpty ||
        state.isApplying ||
        state.applicationStatus == 'pending') {
      return;
    }

    state = state.copyWith(isApplying: true);

    final result = await _repository.applyToAd(apartmentId);
    if (!ref.mounted) {
      return;
    }

    result.fold(
      (_) {
        state = state.copyWith(isApplying: false);
        ref.nav.showSnackBar(message: ref.l10n.groupApplicationSubmitError);
      },
      (application) {
        state = state.copyWith(
          isApplying: false,
          applicationStatus: application.status,
        );
        ref.nav.showSnackBar(message: ref.l10n.groupApplicationSent);
      },
    );
  }

  List<ChatMessageModel> _initialMessages() {
    return [
      ChatMessageModel(
        id: '1',
        text: 'Здравствуйте! Понравилась ваша комната',
        createdAt: DateTime(2026, 4, 11, 18, 26),
        isMine: true,
      ),
      ChatMessageModel(
        id: '2',
        text: 'Добрый день! Спрашивайте',
        createdAt: DateTime(2026, 4, 11, 18, 26),
        isMine: false,
        authorName: 'Сергей О.',
      ),
      ChatMessageModel(
        id: '3',
        text: 'Можно заселиться с 1 мая?',
        createdAt: DateTime(2026, 4, 11, 18, 26),
        isMine: true,
      ),
      ChatMessageModel(
        id: '4',
        text: 'Да, дата свободна!',
        createdAt: DateTime(2026, 4, 11, 18, 26),
        isMine: false,
        authorName: 'Сергей О.',
      ),
    ];
  }

  TextMessage _messageFromModel(ChatMessageModel message) {
    return TextMessage(
      id: message.id,
      authorId: message.isMine ? currentUserId : ownerUserId,
      createdAt: message.createdAt,
      text: message.text,
    );
  }
}

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState({
    @Default(ApartamentModel()) ApartamentModel apartment,
    @Default([]) List<ChatMessageModel> messages,
    @Default('') String applicationStatus,
    @Default(false) bool isApplying,
  }) = _ChatState;
}

@freezed
sealed class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @Default('') String id,
    @Default('') String text,
    required DateTime createdAt,
    @Default(false) bool isMine,
    @Default('') String authorName,
  }) = _ChatMessageModel;
}
