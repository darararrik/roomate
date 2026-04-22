import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/auth/notifier/auth_notifier.dart';

@RoutePage()
class AuthWrapper extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.watch(authProvider);
        return child!;
      },
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
