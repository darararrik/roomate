// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i40;
import 'package:roomate/presentation/routing/wrappers/auth_edit_profile_screen.dart'
    as _i5;
import 'package:roomate/presentation/routing/wrappers/auth_wrapper.dart' as _i8;
import 'package:roomate/presentation/routing/wrappers/filters_wrapper.dart'
    as _i22;
import 'package:roomate/presentation/screens/about_group_screen.dart' as _i1;
import 'package:roomate/presentation/screens/auth_edit_first_page.dart' as _i4;
import 'package:roomate/presentation/screens/auth_edit_second_page.dart' as _i6;
import 'package:roomate/presentation/screens/auth_edit_third_page.dart' as _i7;
import 'package:roomate/presentation/screens/authorization_screens/quiz_screen.dart'
    as _i34;
import 'package:roomate/presentation/screens/authorization_screens/reg_number_screen.dart'
    as _i35;
import 'package:roomate/presentation/screens/authorization_screens/sms_code_screen.dart'
    as _i36;
import 'package:roomate/presentation/screens/authorization_screens/welcome_screen.dart'
    as _i38;
import 'package:roomate/presentation/screens/chats/chat_screen.dart' as _i9;
import 'package:roomate/presentation/screens/chats/chats_screen.dart' as _i10;
import 'package:roomate/presentation/screens/create_ad/create_ad_screen.dart'
    as _i13;
import 'package:roomate/presentation/screens/create_ad/tabs/_10_description_ad_step_screen.dart'
    as _i16;
import 'package:roomate/presentation/screens/create_ad/tabs/_11_contacts_step_screen.dart'
    as _i11;
import 'package:roomate/presentation/screens/create_ad/tabs/_12_finish_screen.dart'
    as _i23;
import 'package:roomate/presentation/screens/create_ad/tabs/_1_first_step_screen.dart'
    as _i24;
import 'package:roomate/presentation/screens/create_ad/tabs/_2_what_type_room_step_screen.dart'
    as _i39;
import 'package:roomate/presentation/screens/create_ad/tabs/_3_type_of_property_step_screen.dart'
    as _i37;
import 'package:roomate/presentation/screens/create_ad/tabs/_4_location_step_screen.dart'
    as _i28;
import 'package:roomate/presentation/screens/create_ad/tabs/_5_input_details_step_screen.dart'
    as _i26;
import 'package:roomate/presentation/screens/create_ad/tabs/_6_add_media_step_screen.dart'
    as _i2;
import 'package:roomate/presentation/screens/create_ad/tabs/_7_feautes_first_step_screen.dart'
    as _i18;
import 'package:roomate/presentation/screens/create_ad/tabs/_8_feautes_second_step_screen.dart'
    as _i19;
import 'package:roomate/presentation/screens/create_ad/tabs/_9_deal_terms_step_screen.dart'
    as _i15;
import 'package:roomate/presentation/screens/create_screen.dart' as _i14;
import 'package:roomate/presentation/screens/favorites_screen.dart' as _i17;
import 'package:roomate/presentation/screens/filling_profile_screen.dart'
    as _i20;
import 'package:roomate/presentation/screens/filters_screen.dart' as _i21;
import 'package:roomate/presentation/screens/home/home_screen.dart' as _i25;
import 'package:roomate/presentation/screens/home/tabs/apartments_tab.dart'
    as _i3;
import 'package:roomate/presentation/screens/home/tabs/coworking_tab.dart'
    as _i12;
import 'package:roomate/presentation/screens/home/tabs/neighbours_tab.dart'
    as _i30;
import 'package:roomate/presentation/screens/location_screen.dart' as _i27;
import 'package:roomate/presentation/screens/profile/profile_data_edit_screen.dart'
    as _i31;
import 'package:roomate/presentation/screens/profile/profile_edit_screen.dart'
    as _i32;
import 'package:roomate/presentation/screens/profile/profile_screen.dart'
    as _i33;
import 'package:roomate/presentation/widgets/nav.dart' as _i29;

/// generated route for
/// [_i1.AboutGroupScreen]
class AboutGroupRoute extends _i40.PageRouteInfo<void> {
  const AboutGroupRoute({List<_i40.PageRouteInfo>? children})
    : super(AboutGroupRoute.name, initialChildren: children);

  static const String name = 'AboutGroupRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutGroupScreen();
    },
  );
}

/// generated route for
/// [_i2.AddMediaStepScreen]
class AddMediaStepRoute extends _i40.PageRouteInfo<void> {
  const AddMediaStepRoute({List<_i40.PageRouteInfo>? children})
    : super(AddMediaStepRoute.name, initialChildren: children);

  static const String name = 'AddMediaStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddMediaStepScreen();
    },
  );
}

/// generated route for
/// [_i3.ApartamentsTab]
class ApartamentsTab extends _i40.PageRouteInfo<void> {
  const ApartamentsTab({List<_i40.PageRouteInfo>? children})
    : super(ApartamentsTab.name, initialChildren: children);

  static const String name = 'ApartamentsTab';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i3.ApartamentsTab();
    },
  );
}

/// generated route for
/// [_i4.AuthEditFirstPage]
class AuthEditFirstRoute extends _i40.PageRouteInfo<void> {
  const AuthEditFirstRoute({List<_i40.PageRouteInfo>? children})
    : super(AuthEditFirstRoute.name, initialChildren: children);

  static const String name = 'AuthEditFirstRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i4.AuthEditFirstPage();
    },
  );
}

/// generated route for
/// [_i5.AuthEditProfileWrapper]
class AuthEditProfileWrapper extends _i40.PageRouteInfo<void> {
  const AuthEditProfileWrapper({List<_i40.PageRouteInfo>? children})
    : super(AuthEditProfileWrapper.name, initialChildren: children);

  static const String name = 'AuthEditProfileWrapper';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return _i40.WrappedRoute(child: const _i5.AuthEditProfileWrapper());
    },
  );
}

/// generated route for
/// [_i6.AuthEditSecondPage]
class AuthEditSecondRoute extends _i40.PageRouteInfo<void> {
  const AuthEditSecondRoute({List<_i40.PageRouteInfo>? children})
    : super(AuthEditSecondRoute.name, initialChildren: children);

  static const String name = 'AuthEditSecondRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i6.AuthEditSecondPage();
    },
  );
}

/// generated route for
/// [_i7.AuthEditThirdPage]
class AuthEditThirdRoute extends _i40.PageRouteInfo<void> {
  const AuthEditThirdRoute({List<_i40.PageRouteInfo>? children})
    : super(AuthEditThirdRoute.name, initialChildren: children);

  static const String name = 'AuthEditThirdRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i7.AuthEditThirdPage();
    },
  );
}

/// generated route for
/// [_i8.AuthWrapper]
class AuthWrapper extends _i40.PageRouteInfo<void> {
  const AuthWrapper({List<_i40.PageRouteInfo>? children})
    : super(AuthWrapper.name, initialChildren: children);

  static const String name = 'AuthWrapper';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return _i40.WrappedRoute(child: const _i8.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i9.ChatScreen]
class ChatRoute extends _i40.PageRouteInfo<void> {
  const ChatRoute({List<_i40.PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i9.ChatScreen();
    },
  );
}

/// generated route for
/// [_i10.ChatsScreen]
class ChatsRoute extends _i40.PageRouteInfo<void> {
  const ChatsRoute({List<_i40.PageRouteInfo>? children})
    : super(ChatsRoute.name, initialChildren: children);

  static const String name = 'ChatsRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i10.ChatsScreen();
    },
  );
}

/// generated route for
/// [_i11.ContactsStepScreen]
class ContactsStepRoute extends _i40.PageRouteInfo<void> {
  const ContactsStepRoute({List<_i40.PageRouteInfo>? children})
    : super(ContactsStepRoute.name, initialChildren: children);

  static const String name = 'ContactsStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i11.ContactsStepScreen();
    },
  );
}

/// generated route for
/// [_i12.CoworkingTab]
class CoworkingTab extends _i40.PageRouteInfo<void> {
  const CoworkingTab({List<_i40.PageRouteInfo>? children})
    : super(CoworkingTab.name, initialChildren: children);

  static const String name = 'CoworkingTab';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i12.CoworkingTab();
    },
  );
}

/// generated route for
/// [_i13.CreateAdScreen]
class CreateAdRoute extends _i40.PageRouteInfo<void> {
  const CreateAdRoute({List<_i40.PageRouteInfo>? children})
    : super(CreateAdRoute.name, initialChildren: children);

  static const String name = 'CreateAdRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i13.CreateAdScreen();
    },
  );
}

/// generated route for
/// [_i14.CreateScreen]
class CreateRoute extends _i40.PageRouteInfo<void> {
  const CreateRoute({List<_i40.PageRouteInfo>? children})
    : super(CreateRoute.name, initialChildren: children);

  static const String name = 'CreateRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i14.CreateScreen();
    },
  );
}

/// generated route for
/// [_i15.DealTermsStepScreen]
class DealTermsStepRoute extends _i40.PageRouteInfo<void> {
  const DealTermsStepRoute({List<_i40.PageRouteInfo>? children})
    : super(DealTermsStepRoute.name, initialChildren: children);

  static const String name = 'DealTermsStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i15.DealTermsStepScreen();
    },
  );
}

/// generated route for
/// [_i16.DescriptionAdStepScreenCopy]
class DescriptionAdStepRouteCopy extends _i40.PageRouteInfo<void> {
  const DescriptionAdStepRouteCopy({List<_i40.PageRouteInfo>? children})
    : super(DescriptionAdStepRouteCopy.name, initialChildren: children);

  static const String name = 'DescriptionAdStepRouteCopy';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i16.DescriptionAdStepScreenCopy();
    },
  );
}

/// generated route for
/// [_i17.FavoritesScreen]
class FavoritesRoute extends _i40.PageRouteInfo<void> {
  const FavoritesRoute({List<_i40.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i17.FavoritesScreen();
    },
  );
}

/// generated route for
/// [_i18.FeautesFirstStepScreen]
class FeautesFirstStepRoute extends _i40.PageRouteInfo<void> {
  const FeautesFirstStepRoute({List<_i40.PageRouteInfo>? children})
    : super(FeautesFirstStepRoute.name, initialChildren: children);

  static const String name = 'FeautesFirstStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i18.FeautesFirstStepScreen();
    },
  );
}

/// generated route for
/// [_i19.FeautesSecondStepScreen]
class FeautesSecondStepRoute extends _i40.PageRouteInfo<void> {
  const FeautesSecondStepRoute({List<_i40.PageRouteInfo>? children})
    : super(FeautesSecondStepRoute.name, initialChildren: children);

  static const String name = 'FeautesSecondStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i19.FeautesSecondStepScreen();
    },
  );
}

/// generated route for
/// [_i20.FillingProfileScreen]
class FillingProfileRoute extends _i40.PageRouteInfo<void> {
  const FillingProfileRoute({List<_i40.PageRouteInfo>? children})
    : super(FillingProfileRoute.name, initialChildren: children);

  static const String name = 'FillingProfileRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i20.FillingProfileScreen();
    },
  );
}

/// generated route for
/// [_i21.FiltersScreen]
class FiltersRoute extends _i40.PageRouteInfo<void> {
  const FiltersRoute({List<_i40.PageRouteInfo>? children})
    : super(FiltersRoute.name, initialChildren: children);

  static const String name = 'FiltersRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i21.FiltersScreen();
    },
  );
}

/// generated route for
/// [_i22.FiltersWrapper]
class FiltersWrapper extends _i40.PageRouteInfo<void> {
  const FiltersWrapper({List<_i40.PageRouteInfo>? children})
    : super(FiltersWrapper.name, initialChildren: children);

  static const String name = 'FiltersWrapper';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return _i40.WrappedRoute(child: const _i22.FiltersWrapper());
    },
  );
}

/// generated route for
/// [_i23.FinishScreen]
class FinishRoute extends _i40.PageRouteInfo<void> {
  const FinishRoute({List<_i40.PageRouteInfo>? children})
    : super(FinishRoute.name, initialChildren: children);

  static const String name = 'FinishRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i23.FinishScreen();
    },
  );
}

/// generated route for
/// [_i24.FirstStepScreen]
class FirstStepRoute extends _i40.PageRouteInfo<void> {
  const FirstStepRoute({List<_i40.PageRouteInfo>? children})
    : super(FirstStepRoute.name, initialChildren: children);

  static const String name = 'FirstStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i24.FirstStepScreen();
    },
  );
}

/// generated route for
/// [_i25.HomeScreen]
class HomeRoute extends _i40.PageRouteInfo<void> {
  const HomeRoute({List<_i40.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i25.HomeScreen();
    },
  );
}

/// generated route for
/// [_i26.InputDetailsApStepScreen]
class InputDetailsApStepRoute extends _i40.PageRouteInfo<void> {
  const InputDetailsApStepRoute({List<_i40.PageRouteInfo>? children})
    : super(InputDetailsApStepRoute.name, initialChildren: children);

  static const String name = 'InputDetailsApStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i26.InputDetailsApStepScreen();
    },
  );
}

/// generated route for
/// [_i27.LocationScreen]
class LocationRoute extends _i40.PageRouteInfo<void> {
  const LocationRoute({List<_i40.PageRouteInfo>? children})
    : super(LocationRoute.name, initialChildren: children);

  static const String name = 'LocationRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i27.LocationScreen();
    },
  );
}

/// generated route for
/// [_i28.LocationStepScreen]
class LocationStepRoute extends _i40.PageRouteInfo<void> {
  const LocationStepRoute({List<_i40.PageRouteInfo>? children})
    : super(LocationStepRoute.name, initialChildren: children);

  static const String name = 'LocationStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i28.LocationStepScreen();
    },
  );
}

/// generated route for
/// [_i29.NavBar]
class NavBarRoute extends _i40.PageRouteInfo<void> {
  const NavBarRoute({List<_i40.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i29.NavBar();
    },
  );
}

/// generated route for
/// [_i30.NeighboursTab]
class NeighboursTab extends _i40.PageRouteInfo<void> {
  const NeighboursTab({List<_i40.PageRouteInfo>? children})
    : super(NeighboursTab.name, initialChildren: children);

  static const String name = 'NeighboursTab';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i30.NeighboursTab();
    },
  );
}

/// generated route for
/// [_i31.ProfileDataEditScreen]
class ProfileDataEditRoute extends _i40.PageRouteInfo<void> {
  const ProfileDataEditRoute({List<_i40.PageRouteInfo>? children})
    : super(ProfileDataEditRoute.name, initialChildren: children);

  static const String name = 'ProfileDataEditRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i31.ProfileDataEditScreen();
    },
  );
}

/// generated route for
/// [_i32.ProfileEditScreen]
class ProfileEditRoute extends _i40.PageRouteInfo<void> {
  const ProfileEditRoute({List<_i40.PageRouteInfo>? children})
    : super(ProfileEditRoute.name, initialChildren: children);

  static const String name = 'ProfileEditRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i32.ProfileEditScreen();
    },
  );
}

/// generated route for
/// [_i33.ProfileScreen]
class ProfileRoute extends _i40.PageRouteInfo<void> {
  const ProfileRoute({List<_i40.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i33.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i34.QuizScreen]
class QuizRoute extends _i40.PageRouteInfo<void> {
  const QuizRoute({List<_i40.PageRouteInfo>? children})
    : super(QuizRoute.name, initialChildren: children);

  static const String name = 'QuizRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i34.QuizScreen();
    },
  );
}

/// generated route for
/// [_i35.RegNumberScreen]
class RegNumberRoute extends _i40.PageRouteInfo<void> {
  const RegNumberRoute({List<_i40.PageRouteInfo>? children})
    : super(RegNumberRoute.name, initialChildren: children);

  static const String name = 'RegNumberRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i35.RegNumberScreen();
    },
  );
}

/// generated route for
/// [_i36.SmsCodeScreen]
class SmsCodeRoute extends _i40.PageRouteInfo<void> {
  const SmsCodeRoute({List<_i40.PageRouteInfo>? children})
    : super(SmsCodeRoute.name, initialChildren: children);

  static const String name = 'SmsCodeRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i36.SmsCodeScreen();
    },
  );
}

/// generated route for
/// [_i37.TypeOfPropertyStepScreen]
class TypeOfPropertyStepRoute extends _i40.PageRouteInfo<void> {
  const TypeOfPropertyStepRoute({List<_i40.PageRouteInfo>? children})
    : super(TypeOfPropertyStepRoute.name, initialChildren: children);

  static const String name = 'TypeOfPropertyStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i37.TypeOfPropertyStepScreen();
    },
  );
}

/// generated route for
/// [_i38.WelcomeScreen]
class WelcomeRoute extends _i40.PageRouteInfo<void> {
  const WelcomeRoute({List<_i40.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i38.WelcomeScreen();
    },
  );
}

/// generated route for
/// [_i39.WhatTypeRoomStepScreen]
class WhatTypeRoomStepRoute extends _i40.PageRouteInfo<void> {
  const WhatTypeRoomStepRoute({List<_i40.PageRouteInfo>? children})
    : super(WhatTypeRoomStepRoute.name, initialChildren: children);

  static const String name = 'WhatTypeRoomStepRoute';

  static _i40.PageInfo page = _i40.PageInfo(
    name,
    builder: (data) {
      return const _i39.WhatTypeRoomStepScreen();
    },
  );
}
