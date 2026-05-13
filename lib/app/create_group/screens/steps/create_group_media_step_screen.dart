import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create_group/widgets/title.dart';
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
        TitleWidget(l10n.addPhotos),
        const SizedBox(height: S.p8),
        Text(
          l10n.createGroupMinPhotosCount,
          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
        ),
        const SizedBox(height: S.p12),
        if (form.imageUrls.isNotEmpty)
          //TODO: реализовать нормальные карточкий 172х172 пикселя 1:1 фото, со стэком чтобы сделать иконку три точки в првом нижнем углу и там алерт дилаог  удалить опцияОТменить и Удалить
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: Image.network(form.imageUrls.first)),
          //   ),
          // ),
          if (form.imageUrls.isNotEmpty) const SizedBox(height: S.p4),
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
                  onCreatePhoto: notifier.addMockPhoto,
                  onPickUpFromGallery: notifier.addMockPhoto,
                ),
              );
            },
            child: Text(context.l10n.addPhoto),
          ),
        ),
        FieldErrorText(text: flow.photoError),
      ],
    );
  }
}
