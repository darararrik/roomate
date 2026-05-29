import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class ChatsRepositoryImpl implements IChatsRepository {
  ChatsRepositoryImpl(this._dataSource, {required this.baseUrl});

  final ChatsDataSource _dataSource;
  final String baseUrl;

  @override
  Future<Either<RemoteException, List<ChatSummaryModel>>> fetchChats() async {
    final result = await _dataSource.fetchChats();
    return result.fold(
      Left.new,
      (items) => Right(
        items
            .map((item) => ChatMapper.toSummaryModel(item, baseUrl: baseUrl))
            .toList(growable: false),
      ),
    );
  }

  @override
  Future<Either<RemoteException, ChatMessagesPageModel>> fetchMessages(
    String chatId, {
    int limit = 50,
    String? before,
  }) async {
    final result = await _dataSource.fetchMessages(
      chatId,
      limit: limit,
      before: before,
    );
    return result.fold(
      Left.new,
      (page) => Right(ChatMapper.toMessagesPageModel(page, baseUrl: baseUrl)),
    );
  }

  @override
  Future<Either<RemoteException, ChatMessageModel>> sendMessage(
    String chatId,
    String text,
  ) async {
    final result = await _dataSource.sendMessage(chatId, text);
    return result.fold(
      Left.new,
      (message) => Right(ChatMapper.toMessageModel(message, baseUrl: baseUrl)),
    );
  }

  @override
  Future<Either<RemoteException, void>> markRead(String chatId) {
    return _dataSource.markRead(chatId);
  }
}
