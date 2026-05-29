import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:shared/shared.dart';

class ChatsRemoteDataSource implements ChatsDataSource {
  ChatsRemoteDataSource(this._client);

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<ChatData>>> fetchChats() async {
    final result = await _client.get<List<ChatData>>(
      ApiUrlConstants.chats,
      needAuth: true,
      transformer: (json) => _parseList(
        json,
        keys: const ['items', 'chats'],
        itemParser: (item) => ChatData.fromJson(item as Map<String, dynamic>),
      ),
    );

    return result.fold(Left.new, Right.new);
  }

  @override
  Future<Either<RemoteException, List<ChatMessageData>>> fetchMessages(
    String chatId, {
    int limit = 50,
    String? before,
  }) async {
    final result = await _client.get<List<ChatMessageData>>(
      ApiUrlConstants.chatMessages(chatId),
      needAuth: true,
      query: {
        'limit': limit,
        if (before != null && before.trim().isNotEmpty) 'before': before,
      },
      transformer: (json) => _parseList(
        json,
        keys: const ['items', 'messages'],
        itemParser: (item) =>
            ChatMessageData.fromJson(item as Map<String, dynamic>),
      ),
    );

    return result.fold(Left.new, Right.new);
  }

  @override
  Future<Either<RemoteException, ChatMessageData>> sendMessage(
    String chatId,
    String text,
  ) async {
    final result = await _client.post<ChatMessageData>(
      ApiUrlConstants.chatMessages(chatId),
      needAuth: true,
      body: {'text': text},
      transformer: (json) => _parseMessage(json),
    );

    return result.fold(Left.new, Right.new);
  }

  @override
  Future<Either<RemoteException, void>> markRead(String chatId) {
    return _client.post<void>(
      ApiUrlConstants.chatRead(chatId),
      needAuth: true,
      transformer: (_) {},
    );
  }

  List<T> _parseList<T>(
    dynamic json, {
    required List<String> keys,
    required T Function(dynamic item) itemParser,
  }) {
    if (json is List<dynamic>) {
      return json.map(itemParser).toList();
    }

    if (json is Map<String, dynamic>) {
      for (final key in keys) {
        final value = json[key];
        if (value is List<dynamic>) {
          return value.map(itemParser).toList();
        }
      }
    }

    return const [];
  }

  ChatMessageData _parseMessage(dynamic json) {
    if (json is Map<String, dynamic>) {
      final nested = json['message'];
      if (nested is Map<String, dynamic>) {
        return ChatMessageData.fromJson(nested);
      }

      return ChatMessageData.fromJson(json);
    }

    return ChatMessageData(createdAt: DateTime.now());
  }
}
