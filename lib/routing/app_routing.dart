import 'package:auto_route/auto_route.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/routing/create_ad_routes.dart';
import 'package:roomate/routing/create_profile_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SplashRoute.page),
    AutoRoute(
      page: MainFlowRoute.page,
      children: [
        // Home Tabs (Вкладка 1)
        AutoRoute(page: OverviewRoute.page, initial: true),
        AutoRoute(page: FavoritesRoute.page),
        AutoRoute(page: CreateRoute.page),
        AutoRoute(page: ChatsRoute.page),
        AutoRoute(page: OverviewProfileRoute.page),
      ],
    ),
    AutoRoute(page: ApartamentsRoute.page),
    AutoRoute(page: MyAdvertisementsRoute.page),
    AutoRoute(page: NeighboursRoute.page),
    AutoRoute(page: CoworkingRoute.page),
    AutoRoute(page: ChatRoute.page),
    AutoRoute(page: ApartamnetRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: FiltersRoute.page),
    AutoRoute(page: ProfileDataEditRoute.page),
    AutoRoute(
      page: AuthWrapper.page,
      children: [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: EnterPhoneNumberRoute.page),
        AutoRoute(page: EnterCodeRoute.page),
      ],
    ),
    AutoRoute(page: AboutGroupRoute.page),
    AutoRoute(page: LocationRoute.page),
    AutoRoute(page: SettingsRoute.page),
    CreateAdRoutes.routes,
    CreateProfile.routes,
  ];
}
