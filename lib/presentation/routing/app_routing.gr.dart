// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:roomate/presentation/routing/wrappers/auth_wrapper.dart' as _i3;
import 'package:roomate/presentation/routing/wrappers/chats_wrapper.dart'
    as _i5;
import 'package:roomate/presentation/routing/wrappers/create_wrapper.dart'
    as _i8;
import 'package:roomate/presentation/routing/wrappers/favorites_wrapper.dart'
    as _i10;
import 'package:roomate/presentation/routing/wrappers/profile_wrapper.dart'
    as _i15;
import 'package:roomate/presentation/screens/about_group/about_group_screen.dart'
    as _i1;
import 'package:roomate/presentation/screens/chats/chats_screen.dart' as _i4;
import 'package:roomate/presentation/screens/create/create_screen.dart' as _i7;
import 'package:roomate/presentation/screens/favorites/favorites_screen.dart'
    as _i9;
import 'package:roomate/presentation/screens/home/home_screen.dart' as _i11;
import 'package:roomate/presentation/screens/nav/nav.dart' as _i12;
import 'package:roomate/presentation/screens/profile/profile_screen.dart'
    as _i14;
import 'package:roomate/presentation/screens/reg_number/reg_number_screen.dart'
    as _i16;
import 'package:roomate/presentation/screens/welcome/welcome_screen.dart'
    as _i17;
import 'package:roomate/presentation/widgets/apartments_tab.dart' as _i2;
import 'package:roomate/presentation/widgets/coworking_tab.dart' as _i6;
import 'package:roomate/presentation/widgets/neighbours_tab.dart' as _i13;

/// generated route for
/// [_i1.AboutGroupScreen]
class AboutGroupRoute extends _i18.PageRouteInfo<void> {
  const AboutGroupRoute({List<_i18.PageRouteInfo>? children})
    : super(AboutGroupRoute.name, initialChildren: children);

  static const String name = 'AboutGroupRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutGroupScreen();
    },
  );
}

/// generated route for
/// [_i2.ApartamentsTab]
class ApartamentsTab extends _i18.PageRouteInfo<void> {
  const ApartamentsTab({List<_i18.PageRouteInfo>? children})
    : super(ApartamentsTab.name, initialChildren: children);

  static const String name = 'ApartamentsTab';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i2.ApartamentsTab();
    },
  );
}

/// generated route for
/// [_i3.AuthWrapper]
class AuthWrapper extends _i18.PageRouteInfo<void> {
  const AuthWrapper({List<_i18.PageRouteInfo>? children})
    : super(AuthWrapper.name, initialChildren: children);

  static const String name = 'AuthWrapper';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i3.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i4.ChatsScreen]
class ChatsRoute extends _i18.PageRouteInfo<void> {
  const ChatsRoute({List<_i18.PageRouteInfo>? children})
    : super(ChatsRoute.name, initialChildren: children);

  static const String name = 'ChatsRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i4.ChatsScreen();
    },
  );
}

/// generated route for
/// [_i5.ChatsWrapper]
class ChatsWrapperRoute extends _i18.PageRouteInfo<void> {
  const ChatsWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(ChatsWrapperRoute.name, initialChildren: children);

  static const String name = 'ChatsWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i5.ChatsWrapper());
    },
  );
}

/// generated route for
/// [_i6.CoworkingTab]
class CoworkingTab extends _i18.PageRouteInfo<void> {
  const CoworkingTab({List<_i18.PageRouteInfo>? children})
    : super(CoworkingTab.name, initialChildren: children);

  static const String name = 'CoworkingTab';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i6.CoworkingTab();
    },
  );
}

/// generated route for
/// [_i7.CreateScreen]
class CreateRoute extends _i18.PageRouteInfo<void> {
  const CreateRoute({List<_i18.PageRouteInfo>? children})
    : super(CreateRoute.name, initialChildren: children);

  static const String name = 'CreateRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i7.CreateScreen();
    },
  );
}

/// generated route for
/// [_i8.CreateWrapper]
class CreateWrapperRoute extends _i18.PageRouteInfo<void> {
  const CreateWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(CreateWrapperRoute.name, initialChildren: children);

  static const String name = 'CreateWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i8.CreateWrapper());
    },
  );
}

/// generated route for
/// [_i9.FavoritesScreen]
class FavoritesRoute extends _i18.PageRouteInfo<void> {
  const FavoritesRoute({List<_i18.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i9.FavoritesScreen();
    },
  );
}

/// generated route for
/// [_i10.FavoritesWrapper]
class FavoritesWrapperRoute extends _i18.PageRouteInfo<void> {
  const FavoritesWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(FavoritesWrapperRoute.name, initialChildren: children);

  static const String name = 'FavoritesWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i10.FavoritesWrapper());
    },
  );
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomeScreen();
    },
  );
}

/// generated route for
/// [_i12.NavBar]
class NavBarRoute extends _i18.PageRouteInfo<void> {
  const NavBarRoute({List<_i18.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i12.NavBar();
    },
  );
}

/// generated route for
/// [_i13.NeighboursTab]
class NeighboursTab extends _i18.PageRouteInfo<void> {
  const NeighboursTab({List<_i18.PageRouteInfo>? children})
    : super(NeighboursTab.name, initialChildren: children);

  static const String name = 'NeighboursTab';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i13.NeighboursTab();
    },
  );
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i14.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i15.ProfileWrapper]
class ProfileWrapperRoute extends _i18.PageRouteInfo<void> {
  const ProfileWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(ProfileWrapperRoute.name, initialChildren: children);

  static const String name = 'ProfileWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i15.ProfileWrapper());
    },
  );
}

/// generated route for
/// [_i16.RegNumberScreen]
class RegNumberRoute extends _i18.PageRouteInfo<void> {
  const RegNumberRoute({List<_i18.PageRouteInfo>? children})
    : super(RegNumberRoute.name, initialChildren: children);

  static const String name = 'RegNumberRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.RegNumberScreen();
    },
  );
}

/// generated route for
/// [_i17.WelcomeScreen]
class WelcomeRoute extends _i18.PageRouteInfo<void> {
  const WelcomeRoute({List<_i18.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i17.WelcomeScreen();
    },
  );
}
