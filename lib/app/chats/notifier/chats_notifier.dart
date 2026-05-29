import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'chats_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChatsNotifier extends _$ChatsNotifier {
  IChatsRepository get _repository => ref.read(chatsRepositoryProvider);

  @override
  Future<List<ChatSummaryModel>> build() async {
    final result = await _repository.fetchChats();
    return result.fold((error) => throw error, _sortChats);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final result = await _repository.fetchChats();
    state = result.fold(
      (error) => AsyncError(error, StackTrace.current),
      (items) => AsyncData(_sortChats(items)),
    );
  }

  void openChat(ChatSummaryModel chat) {
    ref.nav.push(ChatRoute(chat: chat));
  }

  List<ChatSummaryModel> _sortChats(List<ChatSummaryModel> items) {
    final chats = [...items];
    chats.sort((left, right) {
      final leftDate = left.updatedAt;
      final rightDate = right.updatedAt;

      if (leftDate == null && rightDate == null) {
        return 0;
      }

      if (leftDate == null) {
        return 1;
      }

      if (rightDate == null) {
        return -1;
      }

      return rightDate.compareTo(leftDate);
    });
    return chats;
  }
}
