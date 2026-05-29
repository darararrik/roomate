import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:shared/shared.dart';

abstract interface class ChatsDataSource {
  Future<Either<RemoteException, List<ChatData>>> fetchChats();
  Future<Either<RemoteException, ChatMessagesPageData>> fetchMessages(
    String chatId, {
    int limit = 50,
    String? before,
  });
  Future<Either<RemoteException, ChatMessageData>> sendMessage(
    String chatId,
    String text,
  );
  Future<Either<RemoteException, void>> markRead(String chatId);
}
