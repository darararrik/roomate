import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/user_preferences/notifier/user_pref_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/routing.dart';

@RoutePage(name: 'UserPreferencesPageViewRoute')
class UserPreferencesPageView extends ConsumerWidget {
  const UserPreferencesPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(preferencesTagsProvider);
    final notifier = ref.watch(userPrefProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: value.maybeWhen(
          data: (_) {
            final tabsRouter = AutoTabsRouter.of(context, watch: true);
            return SizedBox(
              width: S.p100,
              child: ProgressBarWidget(tabsRouter: tabsRouter, totalPages: tabsRouter.pageCount),
            );
          },
          orElse: () => const SizedBox(),
        ),
        actionsPadding: const P(right: S.p16),
        actions: [
          value.maybeWhen(
            data: (_) {
              final tabsRouter = AutoTabsRouter.of(context, watch: true);
              final activeIndex = tabsRouter.activeIndex + 1;
              final totalPages = tabsRouter.pageCount;
              return Text("$activeIndex/$totalPages", style: context.typography.headline2);
            },
            orElse: () => const SizedBox(),
          ),
        ],
        leading: value.maybeWhen(
          data: (_) {
            final tabsRouter = AutoTabsRouter.of(context, watch: true);
            return BB(onPressed: () => notifier.onPop(tabsRouter));
          },
          orElse: () => const SizedBox(),
        ),
      ),

      bottomNavigationBar: value.maybeWhen(
        data: (_) {
          final tabsRouter = AutoTabsRouter.of(context, watch: true);

          return SafeArea(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.graysWhite,
                boxShadow: [context.colors.bottomNavBarShadow],
              ),
              child: Padding(
                padding: const P(horizontal: S.p16, vertical: S.p20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: S.p12,
                  children: [
                    PrimaryButton(
                      onPressed: () => tabsRouter.setActiveIndex(tabsRouter.activeIndex + 1),
                      text: context.l10n.next,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        orElse: () => null,
      ),

      body: value.when(
        loading: () => const LoadingWidget(),
        error: (error, stackTrace) => ErrorView(error: error.toString()),
        data: (tags) {
          return AutoTabsRouter.pageView(
            physics: const NeverScrollableScrollPhysics(),
            routes: [
              UserPreferencesRoute(tags: tags),
              UserPreferencesRoute(tags: tags),
            ],
          );
        },
      ),
    );
  }
}
