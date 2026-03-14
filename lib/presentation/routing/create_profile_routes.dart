import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';

abstract class CreateProfile {
  static final routes = AutoRoute(
    page: const EmptyShellRoute("CreateProfileShell").page,
    initial: true,
    children: [
      AutoRoute(
        page: CreateProfileRoute.page,
        initial: true,
        children: [
          AutoRoute(page: ProfileSetupRoute.page),
          AutoRoute(page: PreferencesRoute.page),
          AutoRoute(page: VerificationIntroRoute.page),
        ],
      ),
      AutoRoute(page: ProfileSummaryRoute.page),
      AutoRoute(page: VerificationStatusRoute.page),
    ],
  );
}
