import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final ChatController _chatController;
  List<Message> get _messages => List.generate(
    10,
    (int index) => TextMessage(
      id: index.toString(),
      createdAt: DateTime.now().subtract(Duration(days: index)),
      text: 'Looks great! How does it work? (Author = $index)',
      authorId: index.toString(),
    ),
  );
  @override
  void initState() {
    super.initState();
    _chatController = InMemoryChatController(messages: _messages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.light100,
      // ВАЖНО: Это свойство поднимает body при открытии клавиатуры
      // resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const P(top: 44.0),
        child: Chat(
          theme: ChatTheme(
            colors: ChatColors.fromThemeData(context.appTheme),
            typography: ChatTypography.fromThemeData(context.appTheme),
            shape: BorderRadius.circular(S.p24),
          ),
          currentUserId: 'user1',
          resolveUser: (UserID id) async {
            return User(id: id, name: 'John Doe');
          },
          chatController: _chatController,
          onMessageSend: (text) {
            _chatController.insertMessage(
              TextMessage(
                // Better to use UUID or similar for the ID - IDs must be unique
                id: '${Random().nextInt(1000) + 1}',
                authorId: 'user1',
                createdAt: DateTime.now().toUtc(),
                text: text,
              ),
            );
          },
        ),
      ),
    );
  }
}

// =========================================================================
// Вспомогательные классы и утилиты (Оставлены без изменений для полноты)
// =========================================================================
