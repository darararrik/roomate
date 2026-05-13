import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupFinishStepScreen extends ConsumerWidget {
  const CreateGroupFinishStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(createGroupFlowProvider.notifier);
    final l10n = context.l10n;

    return SafeArea(
      top: false,
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p10),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.opacityOrange20,
                borderRadius: BorderRadius.circular(S.p20),
              ),
              child: const SizedBox(height: 240, width: double.infinity),
            ),
            const SizedBox(height: S.p24),
            Text(
              l10n.advertisementSuccessfullyCreated,
              style: context.typography.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: S.p12),
            Text(
              l10n.editOrSupplementAdvertisement,
              textAlign: TextAlign.center,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
            const Spacer(),
            PrimaryButton(text: l10n.createGroupGreat, onPressed: notifier.completeFlow),
          ],
        ),
      ),
    );
  }
}
