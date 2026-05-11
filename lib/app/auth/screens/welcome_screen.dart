import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/auth/notifier/auth_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authProvider.notifier);
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const P(horizontal: S.p16, bottom: S.p44),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const P(horizontal: S.p16, vertical: S.p12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: S.p16,
                        children: [
                          Text(
                            context.l10n.aboutServiceTitle,
                            style: context.typography.headline0.copyWith(
                              color: context.colors.graysWhite,
                            ),
                          ),
                          Text(
                            context.l10n.aboutServiceDescription,
                            style: context.typography.headline1.copyWith(
                              color: context.colors.opacityWhite60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const P(vertical: S.p40),
                      child: Column(
                        children: [
                          OpacityButton(
                            bgColor: context.colors.opacityWhite10,
                            onPressed: () => authNotifier.enterByPhoneNumber(),

                            child: Text(context.l10n.loginByPhoneNumber),
                          ),
                          OpacityButton(
                            bgColor: context.colors.opacityWhite10,
                            onPressed: () => authNotifier.enterAsGuest(),

                            child: Text(context.l10n.loginByGuest),
                          ),
                          IntrinsicWidth(
                            child: Column(
                              spacing: S.p16,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: context.colors.graysWhite,
                                        thickness: S.p1,
                                      ),
                                    ),
                                    Text(
                                      context.l10n.loginViaSocialNetworks,
                                      style: context.typography.activesLabel
                                          .copyWith(
                                            color: context.colors.graysInput200,
                                          ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: context.colors.graysWhite,
                                        thickness: S.p1,
                                      ),
                                    ),
                                  ].separated(const SizedBox(width: S.p10)),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SocialButton(
                                        onPressed: () {},
                                        iconPath: AppIcons.vk,
                                      ),
                                      SocialButton(
                                        onPressed: () {},
                                        iconPath: AppIcons.gos,
                                      ),
                                      SocialButton(
                                        onPressed: () {},
                                        iconPath: AppIcons.sber,
                                      ),
                                      SocialButton(
                                        onPressed: () {},
                                        iconPath: AppIcons.yandex,
                                      ),
                                    ].separated(const SizedBox(width: S.p16)),
                                  ),
                                ),
                              ],
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
    );
  }
}
