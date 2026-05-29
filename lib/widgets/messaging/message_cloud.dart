import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:provider/provider.dart';
import 'package:roomate/lib.dart';

Widget buildChatMessageItem(
  BuildContext context,
  Message message,
  int index,
  Animation<double> animation,
  Widget child, {
  bool? isRemoved,
  required bool isSentByMe,
  MessageGroupStatus? groupStatus,
}) {
  final messages = context.read<ChatController>().messages;
  final currentDate = message.resolvedTime;
  final previousDate = index > 0 ? messages[index - 1].resolvedTime : null;
  final shouldShowDate = currentDate != null && (previousDate == null || !_isSameDay(currentDate, previousDate));

  if (!shouldShowDate) {
    return child;
  }

  return Column(
    children: [
      _DateBubble(date: currentDate),
      child,
    ],
  );
}

Widget buildCustomTextMessage(
  BuildContext context,
  TextMessage message,
  int messageIndex, {
  MessageGroupStatus? groupStatus,
  required bool isSentByMe,
}) {
  return MessageCloud(isMyMessage: isSentByMe, message: message);
}

class MessageCloud extends StatelessWidget {
  const MessageCloud({super.key, required this.isMyMessage, required this.message});

  final bool isMyMessage;
  final TextMessage message;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = isMyMessage ? context.colors.orangeChat : context.colors.grayMessage;
    final Color textColor = isMyMessage ? context.colors.graysWhite : context.colors.graysBlack;
    final Color timeTextColor = isMyMessage ? context.colors.graysWhite : context.colors.graysText700;
    final authorName = message.metadata?['authorName'] as String? ?? '';
    final authorAvatarUrl = message.metadata?['authorAvatarUrl'] as String? ?? '';
    return Padding(
      padding: const P(bottom: S.p4, horizontal: S.p8),
      child: Row(
        mainAxisAlignment: isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMyMessage) ...[
            NetworkAvatar(imageUrl: authorAvatarUrl, size: S.p42, shape: BoxShape.circle),
            const SizedBox(width: S.p8),
          ],
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
              padding: const EdgeInsets.all(S.p16),
              decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(S.p20)),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  if (!isMyMessage && authorName.trim().isNotEmpty) ...[
                    Padding(
                      padding: const P(bottom: S.p8),
                      child: Text(
                        authorName,
                        style: context.typography.bodyDescription.copyWith(color: context.colors.graysText700),
                      ),
                    ),
                  ],
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(message.text, style: context.typography.bodyDescription.copyWith(color: textColor)),
                      ),
                      Padding(
                        padding: const P(left: S.p8),
                        child: Text(
                          message.createdAt!.toNormalTimeString(),
                          style: context.typography.bodySmall.copyWith(color: timeTextColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DateBubble extends StatelessWidget {
  const _DateBubble({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(bottom: S.p20),
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.graysWhite,
            borderRadius: BorderRadius.circular(S.p20),
            boxShadow: [context.colors.shadow],
          ),
          child: Padding(
            padding: const P(horizontal: S.p12, vertical: S.p4),
            child: Text(
              _formatDateBubble(date),
              style: context.typography.activesLabel.copyWith(color: context.colors.graysText700),
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: убрать в l10n
bool _isSameDay(DateTime left, DateTime right) {
  return left.year == right.year && left.month == right.month && left.day == right.day;
}

String _formatDateBubble(DateTime date) {
  const weekdays = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
  const months = [
    'Января',
    'Февраля',
    'Марта',
    'Апреля',
    'Мая',
    'Июня',
    'Июля',
    'Августа',
    'Сентября',
    'Октября',
    'Ноября',
    'Декабря',
  ];

  return '${weekdays[date.weekday - 1]}, ${date.day} ${months[date.month - 1]}';
}
