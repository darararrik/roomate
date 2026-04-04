import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_ad/notifier/ad_form/ad_form_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class AdConfirmationScreen extends ConsumerWidget {
  const AdConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final l10n = context.l10n;
    final dash = l10n.placeholderDash;

    final locationSubtitle = state.address.isNotEmpty
        ? state.address
        : (state.apartmentNumber != 0
              ? '${l10n.apartmentNumber}: ${state.apartmentNumber}'
              : dash);

    final phoneSubtitle = state.mainPhone.isNotEmpty ? state.mainPhone : dash;

    final priceSubtitle = state.cost > 0
        ? '${state.cost} ${state.selectedCurrency.symbol}'
        : dash;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const P(horizontal: S.p16, vertical: S.p10),
        children: [
          _InfoRow(
            iconPath: AppIcons.location,
            title: l10n.createAdConfirmationLocationTitle,
            subtitle: locationSubtitle,
          ),
          _InfoRow(
            iconPath: AppIcons.phone,
            title: l10n.createAdConfirmationPhoneTitle,
            subtitle: phoneSubtitle,
          ),
          _InfoRow(
            iconPath: AppIcons.coins,
            title: l10n.createAdConfirmationPriceTitle,
            subtitle: priceSubtitle,
          ),
        ].separated(const SizedBox(height: S.p12)),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });
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
