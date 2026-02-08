import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

@RoutePage()
class AuthEditThirdPage extends StatelessWidget {
  const AuthEditThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p28, horizontal: S.p16),
          child: Column(
            children: [
              Text(
                "${context.l10n.almostDone1}\n${context.l10n.almostDone2}",
                style: context.typography.headline1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: S.p8),
              Text(
                context.l10n.almostDone3,
                style: context.typography.headline2.copyWith(
                  color: context.colors.text400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: S.p10),
        Padding(
          padding: const P(vertical: S.p12),
          child: Text(
            context.l10n.uploadDocument,
            style: context.typography.headline1,
          ),
        ),
        const SizedBox(height: S.p12),
        Expanded(
          child: Padding(
            padding: const P(bottom: S.p40),
            child: SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.light100,
                  borderRadius: BorderRadius.circular(S.p12),
                ),
                child: const Center(
                  // выравниваем иконку по центру
                  child: AppIcon(AppIcons.camera, size: S.p100),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
