import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "ProfileWrapperRoute")
class ProfileWrapper extends StatelessWidget implements AutoRouteWrapper {
  const ProfileWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
