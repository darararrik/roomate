import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupMediaStepScreen extends ConsumerWidget {
  const CreateGroupMediaStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(groupFormProvider.notifier);
    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Text(l10n.addPhotos, style: context.typography.headline1),
        const SizedBox(height: S.p8),
        Text(
          l10n.createGroupMinPhotosCount,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
        const SizedBox(height: S.p24),
        if (form.imageUrls.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(S.p24),
            child: Image.network(
              form.imageUrls.first,
              height: 308,
              width: 343,
              fit: BoxFit.cover,
            ),
          ),
        if (form.imageUrls.isNotEmpty) const SizedBox(height: S.p24),
        InkWell(
          onTap: notifier.addMockPhoto,
          borderRadius: BorderRadius.circular(S.p20),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.opacityOrange20,
              borderRadius: BorderRadius.circular(S.p20),
            ),
            child: Padding(
              padding: const P(vertical: S.p28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: S.p12,
                children: [
                  AppIcon(AppIcons.camera, color: context.colors.orange),
                  Text(
                    l10n.addPhoto,
                    style: context.typography.headline2.copyWith(
                      color: context.colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        FieldErrorText(text: flow.photoError),
      ],
    );
  }
}
