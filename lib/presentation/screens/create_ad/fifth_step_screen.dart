import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
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
              Text("Добавьте фотографии", style: context.typography.headline1),
              const SizedBox(height: S.p12),
              Text(
                "Количество - минимум 5",
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.text400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: PrimaryButtonWithIconAndColor(
            title: 'Добавить фото',
            iconPath: AppIcons.camera,
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => const BaseBottomSheet(
                title: 'Добавить фото',
                child: Column(children: [Text("data")]),
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
              Text("Добавьте видео", style: context.typography.headline1),
              const SizedBox(height: S.p8),
              Text(
                "Количество - только одно",
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.text400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: PrimaryButtonWithIconAndColor(
            title: 'Добавить видео',
            iconPath: AppIcons.video,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class PrimaryButtonWithIconAndColor extends StatelessWidget {
  const PrimaryButtonWithIconAndColor({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onPressed,
  });

  final String title;
  final String iconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colors.orange20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(S.p16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(iconPath, size: 20, color: context.colors.orange),
          const SizedBox(width: S.p12),
          Text(
            title,
            style: context.typography.activesButton.copyWith(
              color: context.colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
