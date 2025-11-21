import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: .topRight,
                child: Padding(
                  padding: const P(horizontal: S.p4),
                  child: IconButton(
                    onPressed: () => context.replaceRoute(const NavBarRoute()),
                    icon: const AppIcon(AppIcons.xBig, width: S.p32),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const P(horizontal: S.p16, bottom: S.p44),
                  child: Column(
                    mainAxisAlignment: .end,
                    children: [
                      Padding(
                        padding: const P(horizontal: S.p16, vertical: S.p12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.aboutServiceTitle,
                              style: context.textStyle.headline0.copyWith(color: context.colors.white),
                            ),
                            const SizedBox(height: S.p16),
                            Text(
                              context.l10n.aboutServiceDescription,
                              style: context.textStyle.headline1.copyWith(
                                color: context.colors.white.withValues(alpha: 0.59),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const P(vertical: S.p40),
                        child: Column(
                          children: [
                            PrimaryButton.withOpacity(
                              titleText: Text(context.l10n.loginByphoneNumber),
                              backgroundColor: context.colors.white10,
                              onPressed: () => context.router.push(const RegNumberRoute()),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: S.p40,
                                  child: Divider(color: context.colors.white, thickness: S.p1),
                                ),
                                Text(
                                  context.l10n.loginViaSocialNetworks,
                                  style: context.textStyle.activesLabel.copyWith(color: context.colors.input200),
                                ),
                                SizedBox(
                                  width: S.p40,
                                  child: Divider(color: context.colors.white, thickness: S.p1),
                                ),
                              ].separated(const SizedBox(width: S.p10)),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SocialButton(onPressed: () {}, iconPath: AppIcons.vk),
                                  SocialButton(onPressed: () {}, iconPath: AppIcons.gos),
                                  SocialButton(onPressed: () {}, iconPath: AppIcons.sber),
                                  SocialButton(onPressed: () {}, iconPath: AppIcons.yandex),
                                ].separated(const SizedBox(width: S.p16)),
                              ),
                            ),
                          ].separated(const SizedBox(height: S.p16)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
