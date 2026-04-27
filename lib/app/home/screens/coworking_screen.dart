import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CoworkingScreen extends StatelessWidget {
  const CoworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MainAppBar(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                context.l10n.coworking,
                style: context.typography.headline1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
