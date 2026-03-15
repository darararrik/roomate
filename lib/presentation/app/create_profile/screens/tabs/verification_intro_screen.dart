import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class VerificationIntroScreen extends StatelessWidget {
  const VerificationIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final typography = context.typography;
    return Column(
      children: [
        const Padding(
          padding: P(vertical: S.p24),
          child: AppIcon(AppIcons.verification1, width: 150, height: 166),
        ),
        Padding(
          padding: const P(horizontal: S.p32),
          child: Column(
            children: [
              Text(locale.almostDone, style: typography.headline1),
              Text(locale.verificationRemaining, style: typography.headline1),
              const SizedBox(height: S.p8),
              Text(
                locale.gosuslugiVerificationDescription,
                textAlign: .center,
                style: typography.headline2.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
