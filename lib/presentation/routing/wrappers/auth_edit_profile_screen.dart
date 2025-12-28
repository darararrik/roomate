import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class AuthEditProfileWrapper extends StatelessWidget implements AutoRouteWrapper {
  const AuthEditProfileWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
