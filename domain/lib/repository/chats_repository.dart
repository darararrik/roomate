import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class IChatsRepository {
  Future<Either<RemoteException, List<ChatSummaryModel>>> fetchChats();
  Future<Either<RemoteException, ChatMessagesPageModel>> fetchMessages(
    String chatId, {
    int limit = 50,
    String? before,
  });
  Future<Either<RemoteException, ChatMessageModel>> sendMessage(
    String chatId,
    String text,
  );
  Future<Either<RemoteException, void>> markRead(String chatId);
}
