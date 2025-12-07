import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/a_b.dart';
import 'package:roomate/presentation/widgets/message_count_badge.dart';

@RoutePage()
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});
  final String name = "Сергей";
  final String message = "Добрый день";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.messages), canPop: false),
          SliverList.separated(
            itemCount: 10,
            itemBuilder: (context, index) => InkWell(
              onTap: () => context.pushRoute(const ChatRoute()),
              child: Padding(
                padding: const P(horizontal: S.p16),
                child: Padding(
                  padding: const P(all: S.p12),
                  child: Row(
                    children: [
                      const CircleAvatar(radius: S.p24),
                      const SizedBox(width: S.p12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Тихий уголок в центре",
                                    style: context.textStyle.headline1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  "18:30",
                                  style: context.textStyle.bodySmall.copyWith(color: context.colors.text700),
                                ),
                              ],
                            ),
                            const SizedBox(height: S.p4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      style: context.textStyle.bodyDescription,
                                      children: [
                                        TextSpan(text: '$name: '),
                                        TextSpan(
                                          text: message,
                                          style: TextStyle(color: context.colors.text700),
                                        ),
                                      ],
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const MessageCountBadge(count: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, _) => const SizedBox(height: S.p12),
          ),
        ],
      ),
    );
  }
}
