import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage(name: "HomeWrapperRoute")
class HomeWrapper extends StatelessWidget implements AutoRouteWrapper {
  const HomeWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
