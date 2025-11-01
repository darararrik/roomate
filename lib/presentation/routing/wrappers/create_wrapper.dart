import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage(name: "CreateWrapperRoute")
class CreateWrapper extends StatelessWidget implements AutoRouteWrapper {
  const CreateWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
