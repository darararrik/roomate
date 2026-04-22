import 'package:auto_route/auto_route.dart';
import 'package:roomate/routing/app_routing.gr.dart';

abstract class CreateProfile {
  static final routes = AutoRoute(
    initial: true,
    page: const EmptyShellRoute("CreateProfileShell").page,
    children: [
      AutoRoute(
        page: CreateProfileRoute.page,
        initial: true,
        children: [
          AutoRoute(page: ProfileSetupRoute.page),
          AutoRoute(page: VerificationIntroRoute.page),
        ],
      ),
      AutoRoute(page: ProfileSummaryRoute.page),
      AutoRoute(page: VerificationStatusRoute.page),
      AutoRoute(
        page: UserPreferencesPageViewRoute.page,
        children: [AutoRoute(page: UserPreferencesRoute.page)],
      ),
    ],
  );
}
