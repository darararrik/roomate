import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.messages), canPop: false),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: const P(horizontal: S.p16),
                child: Text(
                  'История чатов пока пуста',
                  textAlign: TextAlign.center,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
