import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/screens/quiz_screen.dart';
import 'package:roomate/presentation/widgets/auth_edit_first_page.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

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
            AutoRoute(page: ApartamentsTab.page, path: 'apartments', initial: true),
            AutoRoute(page: NeighboursTab.page, path: 'neighbours'),
            AutoRoute(page: CoworkingTab.page, path: 'coworking'),
          ],
        ),
        AutoRoute(
          page: FavoritesWrapperRoute.page,
          path: 'favorites',
          children: [AutoRoute(page: FavoritesRoute.page, path: '', initial: true)],
        ),
        AutoRoute(
          page: CreateWrapperRoute.page,
          path: 'create',
          children: [AutoRoute(page: CreateRoute.page, path: '', initial: true)],
        ),
        AutoRoute(
          page: ChatsWrapperRoute.page,
          path: 'chats',
          children: [AutoRoute(page: ChatsRoute.page, path: '', initial: true)],
        ),
        AutoRoute(
          page: ProfileWrapperRoute.page,
          path: 'profile',
          children: [
            AutoRoute(page: ProfileRoute.page, path: '', initial: true),
            AutoRoute(page: ProfileEditRoute.page, path: 'profile-edit'),
          ],
        ),
      ],
    ),
    AutoRoute(page: ProfileDataEditRoute.page, path: '/profile-data-edit'),

    // AutoRoute(
    //   page: EditProfileRoute.page,
    //   path: '/edit-profile',
    //   children: [
    //     AutoRoute(page: AuthEditFirstRoute.page, path: 'step1', initial: true),
    //     AutoRoute(page: AuthEditSecondRoute.page, path: 'step2'),
    //     AutoRoute(page: AuthEditThirdRoute.page, path: 'step3'),
    //   ],
    // ),
    AutoRoute(
      page: AuthWrapper.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: WelcomeRoute.page, path: 'welcome', initial: true),
        AutoRoute(page: RegNumberRoute.page, path: 'register/number'),
        AutoRoute(page: SmsCodeRoute.page, path: 'register/code'),
        AutoRoute(page: QuizRoute.page, path: 'quiz'),
      ],
    ),
    AutoRoute(page: AboutGroupRoute.page, path: '/about-group'),
  ];
}
