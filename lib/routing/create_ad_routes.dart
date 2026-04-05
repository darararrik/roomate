import 'package:auto_route/auto_route.dart';
import 'package:roomate/routing/app_routing.gr.dart';

abstract class CreateAdRoutes {
  static final routes = AutoRoute(
    page: CreateAdRoute.page,
    initial: true,
    children: [
      AutoRoute(page: RentTypeStepRoute.page),
      AutoRoute(page: RoomTypeStepRoute.page),
      AutoRoute(page: PropertyTypeStepRoute.page),
      AutoRoute(page: LocationStepRoute.page),
      AutoRoute(page: InputDetailsApStepRoute.page),
      AutoRoute(page: AddMediaStepRoute.page),
      AutoRoute(page: FeaturesFirstStepRoute.page),
      AutoRoute(page: FeaturesSecondStepRoute.page),
      AutoRoute(page: DealTermsStepRoute.page),
      AutoRoute(page: DescriptionAdStepRoute.page),
      AutoRoute(page: ContactsStepRoute.page),
      AutoRoute(page: AdConfirmationRoute.page, initial: true),
      AutoRoute(page: FinishRoute.page),
    ],
  );
}
