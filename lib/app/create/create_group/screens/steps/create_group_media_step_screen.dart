import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/common/notifier/media_upload_notifier.dart';
import 'package:roomate/app/create/common/widgets/upload_images_grid.dart';
import 'package:roomate/app/create/create_group/widgets/title.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupMediaStepScreen extends ConsumerWidget {
  const CreateGroupMediaStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flow = ref.watch(createGroupFlowProvider);
    final uploadNotifier = ref.read(
      mediaUploadProvider(MediaUploadScope.group).notifier,
    );
    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TitleWidget(l10n.addPhotos),
        const SizedBox(height: S.p8),
        Text(
          l10n.createGroupMinPhotosCount,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
        const SizedBox(height: S.p12),
        const UploadImagesGrid(scope: MediaUploadScope.group),
        Padding(
          padding: const P(vertical: S.p4),
          child: OpacityButton(
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
        ),
        FieldErrorText(text: flow.photoError),
      ],
    );
  }
}
