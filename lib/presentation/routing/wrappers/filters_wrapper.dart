import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class FiltersWrapper extends StatelessWidget implements AutoRouteWrapper {
  const FiltersWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
