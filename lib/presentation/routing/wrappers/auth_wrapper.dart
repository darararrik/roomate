import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthWrapper extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
