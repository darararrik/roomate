import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:shared/shared.dart';

@BackendOnly('Temporary mock datasource that emulates chat backend responses.')
class ChatsMockDataSource implements ChatsDataSource {
  final List<ChatData> _chats = [
    ChatData(
      id: 'chat-1',
      title: 'Сергей О.',
      participantsCount: 2,
      lastMessageText: 'Да, комната еще свободна',
      updatedAt: DateTime(2026, 5, 20, 18, 40),
      unreadCount: 1,
      participant: const ChatParticipantData(
        id: 'user-owner-1',
        name: 'Сергей О.',
      ),
      apartament: const ApartamentData(
        id: 'ad-1',
        title: 'Комната у парка',
        imageUrls: ['https://picsum.photos/200/200'],
        price: '18 000',
        roomsCount: '2',
        area: '54',
        floor: 4,
        totalFloor: 9,
        address: 'Омск, улица Ленина, 12',
      ),
    ),
    ChatData(
      id: 'chat-2',
      title: 'Анна П.',
      participantsCount: 2,
      lastMessageText: 'Подъехать можно после 19:00',
      updatedAt: DateTime(2026, 5, 19, 12, 5),
      participant: const ChatParticipantData(
        id: 'user-owner-2',
        name: 'Анна П.',
      ),
      apartament: const ApartamentData(
        id: 'ad-2',
        title: 'Светлая студия',
        imageUrls: ['https://picsum.photos/220/220'],
        price: '22 000',
        roomsCount: '1',
        area: '32',
        floor: 8,
        totalFloor: 12,
        address: 'Омск, Красный путь, 101',
      ),
    ),
  ];

  final Map<String, List<ChatMessageData>> _messages = {
    'chat-1': [
      ChatMessageData(
        id: 'chat-1-message-1',
        chatId: 'chat-1',
        text: 'Здравствуйте! Комната еще свободна?',
        senderId: 'user-me',
        senderName: 'Вы',
        createdAt: DateTime(2026, 5, 20, 18, 32),
      ),
      ChatMessageData(
        id: 'chat-1-message-2',
        chatId: 'chat-1',
        text: 'Да, комната еще свободна',
        senderId: 'user-owner-1',
        senderName: 'Сергей О.',
        createdAt: DateTime(2026, 5, 20, 18, 40),
      ),
    ],
    'chat-2': [
      ChatMessageData(
        id: 'chat-2-message-1',
        chatId: 'chat-2',
        text: 'Во сколько удобно посмотреть квартиру?',
        senderId: 'user-me',
        senderName: 'Вы',
        createdAt: DateTime(2026, 5, 19, 11, 58),
      ),
      ChatMessageData(
        id: 'chat-2-message-2',
        chatId: 'chat-2',
        text: 'Подъехать можно после 19:00',
        senderId: 'user-owner-2',
        senderName: 'Анна П.',
        createdAt: DateTime(2026, 5, 19, 12, 5),
      ),
    ],
  };

  @override
  Future<Either<RemoteException, List<ChatData>>> fetchChats() async {
    await Future.delayed(const Duration(milliseconds: 150));
    return Right(List<ChatData>.from(_chats));
  }

  @override
  Future<Either<RemoteException, ChatMessagesPageData>> fetchMessages(
    String chatId, {
    int limit = 50,
    String? before,
  }) async {
    await Future.delayed(const Duration(milliseconds: 150));
    final messages = _messages[chatId] ?? const <ChatMessageData>[];
    final chat = _chats.firstWhere(
      (item) => item.id == chatId,
      orElse: () => const ChatData(),
    );

    return Right(
      ChatMessagesPageData(
        chatId: chatId,
        title: chat.title,
        participantsCount: chat.participantsCount,
        messages: List<ChatMessageData>.from(messages.take(limit)),
      ),
    );
  }

  @override
  Future<Either<RemoteException, ChatMessageData>> sendMessage(
    String chatId,
    String text,
  ) async {
    await Future.delayed(const Duration(milliseconds: 150));

    final message = ChatMessageData(
      id: 'message-${DateTime.now().microsecondsSinceEpoch}',
      chatId: chatId,
      text: text,
      senderId: 'user-me',
      senderName: 'Вы',
      createdAt: DateTime.now(),
    );

    final current = _messages.putIfAbsent(chatId, () => []);
    current.add(message);

    final chatIndex = _chats.indexWhere((item) => item.id == chatId);
    if (chatIndex != -1) {
      _chats[chatIndex] = _chats[chatIndex].copyWith(
        lastMessageText: text,
        updatedAt: message.createdAt,
      );
    }

    return Right(message);
  }

  @override
  Future<Either<RemoteException, void>> markRead(String chatId) async {
    await Future.delayed(const Duration(milliseconds: 80));

    final chatIndex = _chats.indexWhere((item) => item.id == chatId);
    if (chatIndex != -1) {
      _chats[chatIndex] = _chats[chatIndex].copyWith(unreadCount: 0);
    }

    return const Right(null);
  }
}
