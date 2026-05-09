import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/splash/state/app_status_notifier.dart';
import 'package:roomate/app/splash/state/auth_status.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(appStatusProvider, (_, next) {
      next.whenOrNull(
        data: (status) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!context.mounted) return;

            switch (status) {
              case AuthStatus.unknown:
                break;
              case AuthStatus.unverified:
                context.router.replaceAll([const AuthWrapper()]);
              case AuthStatus.noForm:
                context.router.replaceAll([const SetupProfileRoute()]);
              case AuthStatus.noProfile:
                context.router.replaceAll([const OnBoardingRoute()]);
              case AuthStatus.ready:
                context.router.replaceAll([const MainFlowRoute()]);
            }
          });
        },
        error: (error, stackTrace) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!context.mounted) return;
            context.router.replaceAll([const AuthWrapper()]);
          });
        },
      );
    });

    ref.watch(appStatusProvider);

    return const Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFF111111)),
        ),
      ),
    );
  }
}
