import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_ad/notifier/ad_form/ad_form_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class FinishScreen extends ConsumerWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(adFormProvider);

    return ListView(
      padding: const P(horizontal: S.p16, vertical: S.p10),
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.opacityOrange20,
            borderRadius: .circular(S.p12),
          ),
          child: const SizedBox(height: 240, width: double.infinity),
        ),
        Column(
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
          ].separated(const SizedBox(height: S.p12)),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
