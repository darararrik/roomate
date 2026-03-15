import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../presentation.dart';

@RoutePage()
class VerificationStatusScreen extends StatelessWidget {
  const VerificationStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final typography = context.typography;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: BottomNextButton(
          onPressed: () => context.replaceRoute(const MainFlowRoute()),
        ),
      ),
      appBar: AppBar(title: Text(locale.verification), centerTitle: false),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const P(horizontal: S.p32, top: S.p60),
              child: Column(
                children: [
                  Text(
                    locale.documentsUnderReview,
                    style: typography.headline1,
                  ),
                  const SizedBox(height: S.p8),
                  Text(
                    locale.verificationWaitTime,
                    textAlign: .center,
                    style: typography.headline2.copyWith(
                      color: context.colors.graysText400,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: AppIcon(
                AppIcons.verificationWait,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
