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
      children: [
        AutoRoute(
          initial: true,
          page: HomeWrapperRoute.page,
          path: 'home',
          children: [AutoRoute(page: HomeRoute.page, initial: true)],
        ),
        AutoRoute(
          page: FavoritesWrapperRoute.page,
          path: 'favorites',
          children: [AutoRoute(page: FavoritesRoute.page, initial: true)],
        ),
        AutoRoute(
          page: CreateWrapperRoute.page,
          path: 'create',
          children: [AutoRoute(page: CreateRoute.page, initial: true)],
        ),
        AutoRoute(
          page: ChatsWrapperRoute.page,
          path: 'chats',
          children: [AutoRoute(page: ChatsRoute.page, initial: true)],
        ),
        AutoRoute(
          page: ProfileWrapperRoute.page,
          path: 'profile',
          children: [AutoRoute(page: ProfileRoute.page, initial: true)],
        ),
      ],
    ),
  ];
}
