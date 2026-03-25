import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/app_icons.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/common/app_icon.dart';

@RoutePage()
class AdConfirmationScreen extends ConsumerWidget {
  const AdConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const P(horizontal: S.p16, top: S.p10),
        child: Column(
          spacing: S.p28,
          children: [
            _InfoRow(iconPath: AppIcons.clock, title: 'Аренда', subtitle: state.term),
            _InfoRow(
              iconPath: AppIcons.building2,
              title: 'Вид недвижимости',
              subtitle: state.propertyType,
            ),
            const _InfoRow(
              iconPath: AppIcons.location,
              title: 'Расположение',
              subtitle: 'Омск, улица Красный путь, 101к1',
            ),
            _InfoRow(
              iconPath: AppIcons.phone,
              title: 'Номер телефона',
              subtitle: state.additionalNumber,
            ),
            _InfoRow(
              iconPath: AppIcons.coins,
              title: 'Цена аренды',
              subtitle: state.cost.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.iconPath, required this.title, required this.subtitle});
  final String iconPath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: S.p4,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: AppIcon(iconPath, color: context.colors.lightGray100),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: S.p12,
            children: [
              Text(title, style: context.typography.headline1),
              Text(
                subtitle,
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
