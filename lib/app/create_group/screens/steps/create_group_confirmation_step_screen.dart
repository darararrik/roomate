import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupConfirmationStepScreen extends ConsumerWidget {
  const CreateGroupConfirmationStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.read(createGroupFlowProvider.notifier);
    final state = ref.watch(createGroupFlowProvider);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final l10n = context.l10n;

    return SafeArea(
      top: false,
      child: Padding(
        padding: const P(horizontal: S.p16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CreateGroupConfirmationItem(
                    iconPath: AppIcons.people,
                    title: l10n.createGroupGroupSizeTitle,
                    subtitle: flow.confirmationParticipants(form),
                  ),
                  CreateGroupConfirmationItem(
                    iconPath: AppIcons.building2,
                    title: l10n.typeOfProperty,
                    subtitle: flow.confirmationPropertyType(form, options),
                  ),
                  CreateGroupConfirmationItem(
                    iconPath: AppIcons.location,
                    title: l10n.location,
                    subtitle: flow.confirmationLocation(form),
                  ),
                  CreateGroupConfirmationItem(
                    iconPath: AppIcons.coins,
                    title: l10n.createGroupRentPricePerPersonTitle,
                    subtitle: flow.confirmationPrice(form, options),
                  ),
                  CreateGroupConfirmationItem(
                    iconPath: AppIcons.flash,
                    title: l10n.createGroupUtilitiesTitle,
                    subtitle: flow.confirmationUtilities(form, options),
                  ),
                ].separated(const SizedBox(height: S.p28)),
              ),
            ),
            const SizedBox(height: S.p12),
            PrimaryButton(
              text: state.isSubmitting ? l10n.createGroupPublishing : l10n.createGroupPublishAd,
              onPressed: state.isSubmitting ? null : flow.submitReview,
            ),
            const SizedBox(height: S.p12),
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.graysLight100,
                borderRadius: BorderRadius.circular(S.p20),
              ),
              child: Padding(
                padding: const P(vertical: S.p16),
                child: Center(
                  child: Text(
                    l10n.createGroupSaveDraft,
                    style: context.typography.activesButton.copyWith(
                      color: context.colors.graysText400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateGroupConfirmationItem extends StatelessWidget {
  const CreateGroupConfirmationItem({
    super.key,
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
          padding: const P(all: S.p12),
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
