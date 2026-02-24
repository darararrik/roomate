import 'package:flutter/material.dart';

import 'package:flutter_chat_core/flutter_chat_core.dart';

import 'package:roomate/presentation/presentation.dart';

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
  const MessageCloud({
    super.key,
    required this.isMyMessage,
    required this.message,
  });

  final bool isMyMessage;
  final TextMessage message;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = isMyMessage
        ? context.colors.orangeChat
        : context.colors.grayMessage;
    final Color textColor = isMyMessage
        ? context.colors.graysWhite
        : context.colors.graysBlack;
    final Color timeTextColor = isMyMessage
        ? context.colors.graysWhite
        : context.colors.graysText700;
    return Padding(
      padding: const P(bottom: S.p4, horizontal: S.p8),
      child: Align(
        alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: const EdgeInsets.all(S.p16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(S.p20),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              if (!isMyMessage) ...[
                Padding(
                  padding: const P(bottom: S.p8),
                  child: Text(
                    "Name N.",
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.graysText700,
                    ),
                  ),
                ),
              ],
              Row(
                mainAxisSize: .min,
                crossAxisAlignment: .end,
                children: [
                  Flexible(
                    child: Text(
                      message.text,
                      style: context.typography.bodyDescription.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const P(left: S.p8),
                    child: Text(
                      message.createdAt!.toNormalTimeString(),
                      style: context.typography.bodySmall.copyWith(
                        color: timeTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
