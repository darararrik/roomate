import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/add_media_sheet.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/buttons/opacity_button.dart';

@RoutePage()
class AddMediaStepScreen extends StatelessWidget {
  const AddMediaStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const P(horizontal: S.p16),
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
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: OpacityButton(
            icon: AppIcon(AppIcons.camera, color: context.colors.orange),
            bgColor: context.colors.opacityOrange20,
            color: context.colors.orange,
            height: S.p56,
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              //TODO: implement camera and photo picker
              showModalBottomSheet(
                context: context,
                builder: (context) => const AddMediaSheet(isPhoto: true),
              );
            },
            child: Text(context.l10n.addPhoto),
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
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: OpacityButton(
            icon: AppIcon(AppIcons.video, color: context.colors.orange),
            bgColor: context.colors.opacityOrange20,
            color: context.colors.orange,
            height: S.p56,
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              //TODO: implement camera and photo picker
              showModalBottomSheet(
                context: context,
                builder: (context) => const AddMediaSheet(isPhoto: false),
              );
            },
            child: Text(context.l10n.addVideo),
          ),
        ),
      ],
    );
  }
}
