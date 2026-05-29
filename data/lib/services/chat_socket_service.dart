import 'dart:async';
import 'dart:convert';

import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:talker/talker.dart';

class ChatSocketService {
  ChatSocketService({
    required this.apiBaseUrl,
    required this.tokenService,
    required this.talker,
  });

  final String apiBaseUrl;
  final TokenService tokenService;
  final Talker talker;

  final Map<String, _ChatSocketSubscription> _subscriptions = {};
  StompClient? _client;
  bool _isConnecting = false;

  Future<Stream<ChatMessageModel>> watchChat(String chatId) async {
    final normalizedChatId = chatId.trim();
    if (normalizedChatId.isEmpty) {
      throw const RemoteException(kind: RemoteExceptionKind.unknown);
    }

    final entry = _subscriptions.putIfAbsent(
      normalizedChatId,
      () => _ChatSocketSubscription(),
    );
    entry.listenersCount += 1;

    await _ensureConnected();
    _subscribeToChat(normalizedChatId, entry);

    return entry.controller.stream;
  }

  void releaseChat(String chatId) {
    final normalizedChatId = chatId.trim();
    final entry = _subscriptions[normalizedChatId];
    if (entry == null) {
      return;
    }

    entry.listenersCount -= 1;
    if (entry.listenersCount > 0) {
      return;
    }

    entry.unsubscribe?.call(unsubscribeHeaders: const {});
    entry.unsubscribe = null;
    entry.controller.close();
    _subscriptions.remove(normalizedChatId);

    if (_subscriptions.isEmpty) {
      unawaited(deactivate());
    }
  }

  Future<void> deactivate() async {
    final client = _client;
    _client = null;
    _isConnecting = false;

    for (final entry in _subscriptions.values) {
      entry.unsubscribe?.call(unsubscribeHeaders: const {});
      entry.unsubscribe = null;
    }

    client?.deactivate();
  }

  Future<void> _ensureConnected() async {
    if (_client?.connected == true || _isConnecting) {
      return;
    }

    final accessToken = await tokenService.getAccessToken();
    if (accessToken == null || accessToken.trim().isEmpty) {
      throw const RemoteException(kind: RemoteExceptionKind.unauthorized);
    }

    _isConnecting = true;
    _client = StompClient(
      config: StompConfig(
        url: _resolveWsUrl(apiBaseUrl),
        reconnectDelay: const Duration(seconds: 3),
        stompConnectHeaders: {'Authorization': 'Bearer $accessToken'},
        onConnect: (_) {
          _isConnecting = false;
          for (final entry in _subscriptions.entries) {
            _subscribeToChat(entry.key, entry.value);
          }
        },
        onStompError: (frame) {
          _isConnecting = false;
          final error = frame.headers['message'] ?? frame.body ?? 'STOMP error';
          talker.error('Chat STOMP error: $error');
        },
        onWebSocketError: (error) {
          _isConnecting = false;
          talker.error('Chat WebSocket error', error);
        },
        onWebSocketDone: () {
          _isConnecting = false;
        },
        onDebugMessage: talker.debug,
      ),
    );
    _client?.activate();
  }

  void _subscribeToChat(String chatId, _ChatSocketSubscription entry) {
    final client = _client;
    if (client == null || !client.connected || entry.unsubscribe != null) {
      return;
    }

    entry.unsubscribe = client.subscribe(
      destination: '/topic/chats/$chatId',
      callback: (frame) {
        final body = frame.body;
        if (body == null || body.trim().isEmpty) {
          return;
        }

        try {
          final json = jsonDecode(body);
          if (json is! Map<String, dynamic>) {
            return;
          }

          final messageJson = json['message'];
          final data = messageJson is Map<String, dynamic>
              ? ChatMessageData.fromJson(messageJson)
              : ChatMessageData.fromJson(json);

          if (!entry.controller.isClosed) {
            entry.controller.add(
              ChatMapper.toMessageModel(data, baseUrl: _publicBaseUrl),
            );
          }
        } catch (error, stackTrace) {
          talker.handle(error, stackTrace, 'Failed to parse chat WS event');
        }
      },
    );
  }

  String get _publicBaseUrl {
    final uri = Uri.parse(apiBaseUrl);
    final segments = uri.pathSegments
        .where((segment) => segment.isNotEmpty)
        .toList(growable: true);

    if (segments.isNotEmpty && segments.last == 'api') {
      segments.removeLast();
    }

    final normalizedPath = segments.isEmpty ? '' : '/${segments.join('/')}';
    return uri
        .replace(path: normalizedPath)
        .toString()
        .replaceFirst(RegExp(r'/$'), '');
  }

  String _resolveWsUrl(String baseUrl) {
    final uri = Uri.parse(baseUrl);
    final pathSegments = uri.pathSegments
        .where((segment) => segment.isNotEmpty)
        .toList(growable: true);

    if (pathSegments.isNotEmpty && pathSegments.last == 'api') {
      pathSegments.removeLast();
    }

    final wsSegments = [...pathSegments, 'ws'];

    return uri
        .replace(
          scheme: uri.scheme == 'https' ? 'wss' : 'ws',
          path: '/${wsSegments.join('/')}',
          query: null,
          fragment: null,
        )
        .toString();
  }
}

class _ChatSocketSubscription {
  final StreamController<ChatMessageModel> controller =
      StreamController<ChatMessageModel>.broadcast();
  int listenersCount = 0;
  StompUnsubscribe? unsubscribe;
}
