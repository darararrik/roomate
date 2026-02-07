import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        FavoritesRoute(),
        CreateRoute(),
        ChatsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [context.colors.bottomNavBarShadow],
          ),
          child: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (index) {
              tabsRouter.setActiveIndex(index);
            },
            destinations: [
              NavigationDestination(
                icon: const AppIcon(AppIcons.home),
                label: context.l10n.main,
                selectedIcon: AppIcon(
                  AppIcons.home,
                  color: context.colors.orange,
                ),
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.favourite),
                label: context.l10n.favorites,
                selectedIcon: AppIcon(
                  AppIcons.favourite,
                  color: context.colors.orange,
                ),
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.add),
                label: context.l10n.place,
                selectedIcon: AppIcon(
                  AppIcons.add,
                  color: context.colors.orange,
                ),
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.chats),
                label: context.l10n.messages,
                selectedIcon: AppIcon(
                  AppIcons.chats,
                  color: context.colors.orange,
                ),
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.profile),
                label: context.l10n.profile,
                selectedIcon: AppIcon(
                  AppIcons.profile,
                  color: context.colors.orange,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
