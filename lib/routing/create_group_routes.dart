import 'package:auto_route/auto_route.dart';
import 'package:roomate/routing/app_routing.gr.dart';

abstract class CreateGroupRoutes {
  static final routes = AutoRoute(
    page: CreateGroupRoute.page,
    children: [
      AutoRoute(page: CreateGroupBasicInfoStepRoute.page, initial: true),
      AutoRoute(page: CreateGroupLookingForStepRoute.page),
      AutoRoute(page: CreateGroupLifestyleStepRoute.page),
      AutoRoute(page: CreateGroupHouseholdStepRoute.page),
      AutoRoute(page: CreateGroupRulesStepRoute.page),
      AutoRoute(page: CreateGroupMediaStepRoute.page),
      AutoRoute(page: CreateGroupContactsStepRoute.page),
      AutoRoute(page: CreateGroupFinanceStepRoute.page),
      AutoRoute(page: CreateGroupDescriptionStepRoute.page),
      AutoRoute(page: CreateGroupConfirmationStepRoute.page),
      AutoRoute(page: CreateGroupFinishStepRoute.page),
    ],
  );
}
