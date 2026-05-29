import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ChatsScreen extends ConsumerWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(chatsProvider);
    final notifier = ref.read(chatsProvider.notifier);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: notifier.refresh,
        child: CustomScrollView(
          slivers: [
            AB(title: Text(context.l10n.messages), canPop: false),
            asyncState.when(
              data: (chats) {
                if (chats.isEmpty) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Padding(
                        padding: const P(horizontal: S.p16),
                        child: Text(
                          'История чатов пока пуста',
                          textAlign: TextAlign.center,
                          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
                        ),
                      ),
                    ),
                  );
                }

                return SliverPadding(
                  padding: const P(horizontal: S.p16, bottom: S.p24),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final chat = chats[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: index == chats.length - 1 ? 0 : S.p12),
                        child: _ChatListTile(chat: chat, onTap: () => notifier.openChat(chat)),
                      );
                    }, childCount: chats.length),
                  ),
                );
              },
              error: (error, _) => SliverFillRemaining(hasScrollBody: false, child: ErrorView(error: error)),
              loading: () => const SliverFillRemaining(hasScrollBody: false, child: LoadingWidget()),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatListTile extends StatelessWidget {
  const _ChatListTile({required this.chat, required this.onTap});

  final ChatSummaryModel chat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final updatedAt = chat.updatedAt;

    return Material(
      color: colors.graysWhite,
      borderRadius: BorderRadius.circular(S.p16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(S.p16),
        child: Padding(
          padding: const P(all: S.p12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NetworkAvatar(imageUrl: chat.avatarUrl, size: S.p56, shape: BoxShape.circle),
              const SizedBox(width: S.p12),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            chat.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.typography.headline1,
                          ),
                        ),
                        if (updatedAt != null) ...[
                          Text(
                            _formatChatDate(updatedAt),
                            style: context.typography.bodySmall.copyWith(color: colors.graysText400),
                          ),
                        ],
                      ],
                    ),
                    Text(
                      chat.apartament.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.typography.bodySmall.copyWith(color: colors.graysText400),
                    ),
                    Row(
                      children: [
                        Text("${chat.lastMessageSenderName}: ", maxLines: 1, style: context.typography.bodyDescription),
                        Text(
                          chat.lastMessageText,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.typography.bodyDescription.copyWith(color: colors.graysText700),
                        ),
                        if (chat.unreadCount > 0) ...[
                          const SizedBox(width: S.p12),
                          MessageCountBadge(count: chat.unreadCount),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatChatDate(DateTime value) {
    final now = DateTime.now();
    final isToday = value.year == now.year && value.month == now.month && value.day == now.day;

    return isToday ? value.toNormalTimeString() : value.toFormattedString();
  }
}
