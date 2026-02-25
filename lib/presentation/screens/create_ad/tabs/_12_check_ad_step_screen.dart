import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/state/createAd/create_ad_notifier.dart';

@RoutePage()
class CheckAdStepScreen extends ConsumerWidget {
  const CheckAdStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);
    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ItemList(
          value: state.selectedCurrency?.name ?? '',
          title: 'Аренда',
          icon: Icons.watch_later_outlined,
        ),
        const ItemList(
          value: 'value',
          title: 'Аренда',
          icon: Icons.watch_later_outlined,
        ),
        const ItemList(
          value: 'value',
          title: 'Аренда',
          icon: Icons.watch_later_outlined,
        ),
        const ItemList(
          value: 'value',
          title: 'Аренда',
          icon: Icons.watch_later_outlined,
        ),
      ].separated(const SizedBox(height: S.p28)),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
  });

  final String value;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .max,
      children: [
        SizedBox(
          height: S.p44,
          width: S.p44,
          child: Icon(
            Icons.watch_later_outlined,
            color: context.colors.lightGray100,
          ),
        ),
        const SizedBox(width: S.p4),
        Expanded(
          child: Column(
            spacing: S.p12,
            crossAxisAlignment: .start,
            children: [
              Text(title, style: context.typography.headline1),
              Text(
                "value",
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
