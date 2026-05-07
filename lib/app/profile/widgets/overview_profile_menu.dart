import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class OverviewProfileMenu extends StatelessWidget {
  const OverviewProfileMenu({super.key, required this.items});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysLight100,
          borderRadius: BorderRadius.circular(S.p32),
        ),
        child: Padding(
          padding: const P(vertical: S.p24),
          child: Column(
            children: items.separated(const SizedBox(height: S.p24)),
          ),
        ),
      ),
    );
  }
}
