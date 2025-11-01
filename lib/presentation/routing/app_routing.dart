import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/routing/app_routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: NavBarRoute.page,
      initial: true,
      path: '/',
      children: [AutoRoute(initial: true, page: HomeRoute.page, path: 'home')],
    ),
    // AutoRoute(
    //   page: AuthWrapperRoute.page,
    //   children: [
    //     AutoRoute(page: LoginRoute.page, initial: true, path: 'login'),
    //     AutoRoute(page: RegistrationRoute.page, path: 'registration'),
    //   ],
    // ),
  ];
}
