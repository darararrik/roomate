import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/a_b.dart';

@RoutePage()
class RegNumberScreen extends StatelessWidget {
  const RegNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.register), centerTitle: false),
          const SliverFillRemaining(child: Column(children: [])),
        ],
      ),
    );
  }
}
