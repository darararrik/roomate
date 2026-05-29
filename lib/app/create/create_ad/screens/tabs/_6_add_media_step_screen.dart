import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/common/notifier/media_upload_notifier.dart';
import 'package:roomate/app/create/common/widgets/upload_images_grid.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class AddMediaStepScreen extends ConsumerWidget {
  const AddMediaStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uploadNotifier = ref.read(
      mediaUploadProvider(MediaUploadScope.ad).notifier,
    );

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: S.p12,
          children: [
            Text(context.l10n.addPhotos, style: context.typography.headline1),
            Text(
              context.l10n.minPhotosCount,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
          ],
        ),
        const UploadImagesGrid(scope: MediaUploadScope.ad),
        OpacityButton(
          icon: AppIcon(AppIcons.camera, color: context.colors.orange),
          bgColor: context.colors.opacityOrange20,
          color: context.colors.orange,
          height: S.p56,
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            showModalBottomSheet(
              context: context,
              builder: (context) => AddMediaSheet(
                isPhoto: true,
                onCreatePhoto: () {
                  Navigator.of(context).pop();
                  uploadNotifier.capturePhoto();
                },
                onPickUpFromGallery: () {
                  Navigator.of(context).pop();
                  uploadNotifier.pickFromGallery();
                },
              ),
            );
          },
          text: context.l10n.addPhoto,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.addVideos, style: context.typography.headline1),
            Text(
              context.l10n.oneVideoOnly,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
          ].separated(const SizedBox(height: S.p12)),
        ),
        OpacityButton(
          icon: AppIcon(AppIcons.video, color: context.colors.orange),
          bgColor: context.colors.opacityOrange20,
          color: context.colors.orange,
          height: S.p56,
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            showModalBottomSheet(
              context: context,
              builder: (context) => AddMediaSheet(
                isPhoto: false,
                onCreatePhoto: () {},
                onPickUpFromGallery: () {},
              ),
            );
          },
          text: context.l10n.addVideo,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
