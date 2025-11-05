import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: "FavoritesWrapperRoute")
class FavoritesWrapper extends StatelessWidget implements AutoRouteWrapper {
  const FavoritesWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget build(BuildContext context) {
    return this;
  }
}
