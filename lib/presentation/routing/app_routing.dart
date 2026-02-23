import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/routing/app_routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: NavBarRoute.page,
      path: '/main',
      children: [
        // Home Tabs (Вкладка 1)
        AutoRoute(
          page: HomeRoute.page,
          path: 'home',
          initial: true,
          children: [
            AutoRoute(
              page: ApartamentsTab.page,
              path: 'apartments',
              initial: true,
            ),
            AutoRoute(page: NeighboursTab.page, path: 'neighbours'),
            AutoRoute(page: CoworkingTab.page, path: 'coworking'),
          ],
        ),
        AutoRoute(page: FavoritesRoute.page, path: 'favorite'),
        AutoRoute(page: CreateRoute.page, path: 'create'),
        AutoRoute(page: ChatsRoute.page, path: 'chats'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
      ],
    ),
    AutoRoute(page: ChatRoute.page, path: '/chat'),
    AutoRoute(page: ProfileEditRoute.page, path: '/profile-edit'),
    AutoRoute(
      page: FiltersWrapper.page,
      path: '/filters',
      children: [
        AutoRoute(page: FiltersRoute.page, path: '', initial: true),
        AutoRoute(page: LocationRoute.page, path: 'location'),
      ],
    ),
    AutoRoute(page: ProfileDataEditRoute.page, path: '/profile-data-edit'),

    AutoRoute(
      page: AuthWrapper.page,
      // path: '/',
      // initial: true,
      children: [
        AutoRoute(page: WelcomeRoute.page, path: 'welcome', initial: true),
        AutoRoute(page: RegNumberRoute.page, path: 'register/number'),
        AutoRoute(page: SmsCodeRoute.page, path: 'register/code'),
        AutoRoute(page: QuizRoute.page, path: 'quiz'),
      ],
    ),
    AutoRoute(page: AboutGroupRoute.page, path: '/about-group'),
    AutoRoute(
      page: CreateAdRoute.page,
      path: '/create-ad',
      initial: true,
      children: [
        AutoRoute(page: FirstStepRoute.page, path: 'first-step', initial: true),
        AutoRoute(
          page: WhatTypeRoomStepRoute.page,
          path: 'what-type-room-step',
        ),
        AutoRoute(
          page: TypeOfPropertyStepRoute.page,
          path: 'type-of-property-step',
        ),
        AutoRoute(page: LocationStepRoute.page, path: 'location-step'),
        AutoRoute(
          page: InputDetailsApStepRoute.page,
          path: 'input-details-ap-step',
        ),
        AutoRoute(page: FifthStepRoute.page, path: 'fifth-step'),
      ],
    ),
  ];
}
