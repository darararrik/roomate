import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/buttons/primary_btn.dart';
import 'package:roomate/presentation/widgets/sheets/base_bottom_sheet.dart';

@RoutePage()
class FifthStepScreen extends StatelessWidget {
  const FifthStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const P(top: S.p4, bottom: S.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.addPhotos, style: context.typography.headline1),
              const SizedBox(height: S.p12),
              Text(
                context.l10n.minPhotosCount,
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.text400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: PrimaryButton(
            title: Text(context.l10n.addPhoto),
            icon: AppIcon(
              AppIcons.camera,
              size: S.p20,
              color: context.colors.white,
            ),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => BaseBottomSheet(
                title: context.l10n.addPhoto,
                child: const Column(children: [Text("data")]),
              ),
            ),
          ),
        ),
        const SizedBox(height: S.p12),
        Padding(
          padding: const P(top: S.p4, bottom: S.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.addVideos, style: context.typography.headline1),
              const SizedBox(height: S.p8),
              Text(
                context.l10n.oneVideoOnly,
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.text400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: PrimaryButton(
            title: Text(context.l10n.addVideo),
            icon: AppIcon(
              AppIcons.video,
              size: S.p20,
              color: context.colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
