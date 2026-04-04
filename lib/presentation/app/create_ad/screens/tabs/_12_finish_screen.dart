import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';

@RoutePage()
class FinishScreen extends ConsumerWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(adFormProvider);

    return Padding(
      padding: const P(horizontal: S.p16, top: S.p10),
      child: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.opacityOrange20,
              borderRadius: .circular(S.p12),
            ),
            child: const SizedBox(height: 240, width: double.infinity),
          ),
          const SizedBox(height: S.p12),
          Padding(
            padding: const P(vertical: S.p12),
            child: Column(
              spacing: S.p12,
              children: [
                Text(
                  context.l10n.advertisementSuccessfullyCreated,
                  style: context.typography.headline1,
                ),
                Text(
                  context.l10n.editOrSupplementAdvertisement,
                  textAlign: .center,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
