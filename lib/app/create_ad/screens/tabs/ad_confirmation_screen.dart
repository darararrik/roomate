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
    final notifier = ref.read(adFormProvider.notifier);
    final flow = ref.read(createAdFlowProvider.notifier);
    final l10n = context.l10n;
    final colors = context.colors;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("l10n.createAdConfirmationTitle", style: context.typography.headline1),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const AutoLeadingButton(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: S.p16, vertical: S.p20),
        children: [
          _InfoRow(
            iconPath: AppIcons.home,
            title: flow.getPropertyTypeText(state),
            subtitle: flow.getRentTypeText(state),
          ),
          _InfoRow(
            iconPath: AppIcons.location,
            title: l10n.createAdConfirmationLocationTitle,
            subtitle: flow.getFullAddressText(state),
          ),
          _InfoRow(
            iconPath: AppIcons.location,
            title: "l10n.createAdConfirmationFeaturesTitle",
            subtitle: flow.getApartmentSummary(state),
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
      // bottomNavigationBar: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.all(S.p16),
      //     child: AppButton(onPressed: () => notifier.submitForm(), text: l10n.publishAdButton),
      //   ),
      // ),
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
      children: [
        Container(
          padding: const EdgeInsets.all(S.p12),
          decoration: BoxDecoration(
            color: colors.lightGray100,
            borderRadius: BorderRadius.circular(S.p12),
          ),
          child: AppIcon(iconPath, color: colors.graysText400, width: 24),
        ),
        const SizedBox(width: S.p16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: typography.headline1.copyWith(height: 1.2)),
              const SizedBox(height: S.p4),
              Text(
                subtitle,
                style: typography.bodyDescription.copyWith(color: colors.graysText400, height: 1.4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
