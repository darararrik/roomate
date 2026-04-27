import 'package:auto_route/auto_route.dart';
import 'package:roomate/routing/app_routing.gr.dart';

abstract class CreateProfile {
  static final routes = AutoRoute(
    page: const EmptyShellRoute("CreateProfileShell").page,
    children: [
      AutoRoute(page: ProfileSetupRoute.page),
      AutoRoute(page: OnBoardingRoute.page),
      VerificationFlow.routes,
      AutoRoute(
        page: UserPreferencesPageViewRoute.page,
        children: [
          AutoRoute(page: UserPreferencesRoute.page),
          VerificationFlow.routes,
        ],
      ),
    ],
  );
}

abstract class VerificationFlow {
  static final routes = AutoRoute(
    page: const EmptyShellRoute("VerificationFlow").page,
    children: [
      AutoRoute(page: VerificationIntroRoute.page),
      AutoRoute(page: VerifcationSummaryRoute.page),
      AutoRoute(page: VerificationStatusRoute.page),
    ],
  );
}
