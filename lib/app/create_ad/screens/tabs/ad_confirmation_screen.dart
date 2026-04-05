import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class AdConfirmationScreen extends ConsumerWidget {
  const AdConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.read(createAdFlowProvider.notifier);
    final l10n = context.l10n;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: S.p16, vertical: S.p20),
        children: [
          _InfoRow(
            iconPath: AppIcons.clock,
            title: l10n.rent,
            subtitle: flow.getRentTypeText(state),
          ),
          _InfoRow(
            iconPath: AppIcons.building2,
            title: l10n.typeOfProperty,
            subtitle: flow.getPropertyTypeText(state),
          ),
          _InfoRow(
            iconPath: AppIcons.location,
            title: l10n.location,
            subtitle: flow.getFullAddressText(state),
          ),
          _InfoRow(
            iconPath: AppIcons.phone,
            title: l10n.createAdConfirmationPhoneTitle,
            subtitle: flow.getContactPhone(state),
          ),
          _InfoRow(
            iconPath: AppIcons.coins,
            title: l10n.createAdConfirmationPriceTitle,
            subtitle: flow.getFormattedPrice(state),
          ),
        ].separated(const SizedBox(height: S.p20)),
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
    final colors = context.colors;
    final typography = context.typography;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: S.p4,
      children: [
        Padding(
          padding: const P(all: S.p12),
          child: AppIcon(iconPath, color: colors.lightGray100),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: S.p12,
            children: [
              Text(title, style: typography.headline1),
              Text(
                subtitle,
                style: typography.bodyDescription.copyWith(color: colors.graysText400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
