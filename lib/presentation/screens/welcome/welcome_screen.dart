import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/p_button.dart';
import 'package:roomate/presentation/widgets/social_button.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.9,
                  center: Alignment(1, -0.1),
                  colors: [
                    Color(0xFFFFBA6C), // тёплый оранжевый
                    Color(0xFFED1B00), // насыщенный красно-оранжевый
                  ],
                ),
              ),
            ),
          ),

          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromRGBO(0, 0, 0, 0.8), // затемнение внизу
                  ],
                  stops: [0.6, 0.9],
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromRGBO(0, 0, 0, 0.24), // затемнение внизу
                  ],
                  stops: [0.6, 0.9],
                ),
              ),
            ),
          ),
          Padding(
            padding: const P(horizontal: S.p16, bottom: S.p44),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.aboutServiceTitle,
                        style: context.appTextStyle.headline0.copyWith(color: context.appColors.white),
                      ),
                      const SizedBox(height: S.p16),
                      Text(
                        context.l10n.aboutServiceDescription,
                        style: context.appTextStyle.headline1.copyWith(
                          color: context.appColors.white.withValues(alpha: 0.59),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const P(vertical: S.p40),
                  child: Column(
                    children: [
                      PButton.withOpacity(
                        title: context.l10n.loginByphoneNumber,
                        context: context,
                        onPressed: () => context.router.push(const RegNumberRoute()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: S.p40,
                            child: Divider(color: context.appColors.white, thickness: S.p1),
                          ),
                          Text(
                            context.l10n.loginViaSocialNetworks,
                            style: context.appTextStyle.activesLabel.copyWith(color: context.appColors.input200),
                          ),
                          SizedBox(
                            width: S.p40,
                            child: Divider(color: context.appColors.white, thickness: S.p1),
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
        ],
      ),
    );
  }
}
