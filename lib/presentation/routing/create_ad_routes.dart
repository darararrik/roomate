import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';

abstract class CreateAdRoutes {
  static final routes = AutoRoute(
    page: CreateAdRoute.page,
    path: '/create-ad',
    initial: true,
    children: [
      AutoRoute(page: FirstStepRoute.page, path: 'first-step', initial: true),
      AutoRoute(page: WhatTypeRoomStepRoute.page, path: 'what-type-room-step'),
      AutoRoute(
        page: TypeOfPropertyStepRoute.page,
        path: 'type-of-property-step',
      ),
      AutoRoute(page: LocationStepRoute.page, path: 'location-step'),
      AutoRoute(
        page: InputDetailsApStepRoute.page,
        path: 'input-details-ap-step',
      ),
      AutoRoute(page: AddMediaStepRoute.page, path: 'add-media-step'),
      AutoRoute(page: FeautesFirstStepRoute.page, path: 'features-first-step'),
      AutoRoute(
        page: FeautesSecondStepRoute.page,
        path: 'features-second-step',
      ),
      AutoRoute(page: DealTermsStepRoute.page, path: 'deal-terms-step'),
      AutoRoute(page: DescriptionAdStepRoute.page, path: 'description-step'),
      AutoRoute(page: ContactsStepRoute.page, path: 'contacts-step'),
      AutoRoute(page: FinishRoute.page, path: 'finish-step'),
    ],
  );
}
